\version "2.18.2"

\include "/home/tom/include/lilypond-include.ily"

titleString = "There Will Never Be Another You"

fullScoreTitleString = "CHORD MELODY"
leadSheetTitleString = \markup {"LEAD SHEET (" \titleString ")" }
chordMelodyTitleString = \markup {"CHORD MELODY with TAB (" \titleString ")" }
compingStudyTitleString = \markup {"COMPING STUDY with TAB (" \titleString ")" }

\header {
  title = \titleString
  subtitle = "Chord Melody and Other Studies for Guitar"
  composer = "by Harry Warren and Mack Gordon"
  arranger = "arranged by Tom Swan"
  copyright = "Copyright &copyright; 2020 by Tom Swan"
  tagline = "www.tomswan.com"
}

\paper {
  #(include-special-characters)
  #(set-paper-size "letter")
  min-systems-per-page = 7
  max-systems-per-page = 8
}

%% -----------------------------------------------------------------
% Enable the following for YouTube videos only (one staff per page)
% Preceding \paper variable can be left as is or disabled
% Use --png -o fname options to compile

%{ Lilypond multi-line comment %%%
\paper {
  #(include-special-characters)
  #(set-paper-size "video size")
  score-system-spacing =
    #'((basic-distance . 1)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 0))
  ragged-bottom = ##t
  min-systems-per-page = 1
  max-systems-per-page = 1
  print-page-number = ##f
}
   end of comment %%% %}

%% -----------------------------------------------------------------

\layout {
  ragged-right = ##f
  ragged-last = ##f
}

globalDefs = { 
  \clef "treble_8"
  \numericTimeSignature
  \key ees \major 
  \time 4/4 
  \tempo 4 = 120
  \set Score.tempoHideNote = ##f
}

simpleChordValues = \chordmode {
  s4
% 1
  ees1:maj7
  ees1:maj7
  d1:m7.5-
  g1:7
% 5
  c1:m7
  c1:m7
  bes1:m7
  ees1:7
%9
  aes1:maj7
  des1:9
  ees1:maj7
  c1:m7
% 13
  f1:7
  f1:7
  f1:m7
  bes1:7
%17
  ees1:maj7
  ees1:maj7
  d1:m7.5-
  g1:7
% 21
  c1:m7
  c1:m7
  bes1:m7
  ees1:7
% 25
  aes1:maj7
  des1:9
  ees1:maj7
  a2:m7 d2:7
% 29
  ees2:maj7 d2:7
  g2:m7 c2:7
  f2:m7 bes2:7
  ees2 bes2:7
}

chordValues = \chordmode {
  s4
% 1
  ees1:maj7
  ees2.:maj7 ees4:9
  d1:m7.5-
  g1:7
% 5
  c1:m7
  c1:m7.9-
  bes1:m7
  ees1:7
%9
  aes1:6
  des1:6.9.11+
  ees1:6.9
  c1:m7.11
% 13
  f4:7.13 f4:7.9- f2:7.11
  f2:9 f2:7.13
  f1:m6
  bes1:7.5+
%17
  ees1:maj7
  ees1:maj7
  d1:m7.5-
  g1:7
% 21
  c1:m7
  c1:m7
  bes1:m7
  ees1:7
% 25
  aes1:maj7
  des1:9
  ees1:maj7
  a2:m7.5- d2:7
% 29
  ees2:maj7 d2:7
  g2:m7 c2:7
  f2:7.5+ f2:m6.9-
  ees2:maj7 bes2:7.5+
}

compingChordValues = \chordmode {
  s4
% 1
  ees1:maj7
  ees2.:maj7 s8 ees8:maj7.69
  d1:m7.5-
  g2:7 g2:7.9-
% 5
  s4 c2.:m7.69
  c2:m7.9 c2:m7
  bes1:m7.11
  ees1:7
%9
  aes1:maj7
  des1:6
  ees1:maj7
  c1:m7.11
% 13
  f1:7
  f1:7
  f1:m7.11
  bes1:7.5+
%17
  ees1:maj7
  ees2.:maj7 s8 ees8:maj7.69
  d1:m7.5-
  g2:7 g2:7.9-
% 21
  s4 c2.:m7.69
  c2:m7.9 c2:m7
  bes1:m7.11
  ees1:7
% 25
  aes1:maj7
  des1:6
  ees1:maj7
  aes2:m7.11 d2:7
% 29
  ees2:maj7 d2:7
  g2:m7 c2:7
  f2:m7 bes2:7
  ees2:maj7 bes2:7
}

%% Melody

notesVoiceA = \relative c' {
  \stemUp
  \tieUp
  \partial 4
  bes4 |
% 1
  c4 d ees f |
  g4 bes~ <bes f>4. ees,8 |
  f2~ f4 r4 |
  r2 f4 g4  |
  \break
% 5
  ees4 f g bes |
  c4 ees c4.\2 bes8 |
  c1 |
  c2. bes4 |
  \break
% 9
  ees4 c\2 bes\2 aes\2 |
  g4\2 f\3 g\2 aes\2 |
  bes4\2 g\3 f\3 ees\3 |
  f4\2 ees\3 f4.\2 ees8\3 |
  \break
% 13
  d'4 c bes a |
  g4\2 f\2 g f |
  aes!1 |
  bes2. bes,4 |
  \break
  \bar "||" 
% 17
  c4 d ees f |
  g4 bes f4.\2 ees8 |
  f2~ f4 r4 |
  r2 f4 g4  |
  \break
% 21
  ees4 f g bes |
  c4 ees c4.\2 bes8 |
  c1 |
  c2. bes4 |
  \break
% 25
  ees4 c\2 bes\2 aes\2 |
  g4\2 f\3 g4.\2 aes8\2 |
  bes4\2 g\3 f\3 ees\3 |
  d'2 c2 |
  \break
% 29
  bes4\2 ees\1 d\1 c\1 |
  bes4 ees, bes' aes |
  f2 fis |
  g4 r4 bes2 |
  \bar "||" 
  \bar "|." 
}

% Harmony

notesVoiceB = \relative c {
  \stemDown
  \tieDown
  \partial 4
  s4 |
% 1
  <ees bes'>2 <ees bes' ees>2
  <ees bes' d>4 r2 r8 <f bes>8
  <d aes' c>2 c'8 aes8 f4~
  <f b d>2 r2 
% 5
  <c ees bes'>2. r4
  <bes'\4 des g>4 r2.
  <bes,\6 des' f>1
  <g'\4 des'\3 f>2. r4
% 9
  <aes\5 f'>2 r2
  <des,\6 bes' ees>2 <des\6 bes' ees>2
  <ees\6 c' f>2 <ees\6 c' f>4  r4
  <c\6 bes'>2 <c\6 bes'>2 
% 13
  <a'\4 ees'\3 fis\2>4 <a\4 ees'\3 fis\2>4 <a\4 ees'\3 f\2>4 r4
  <f\5 a ees'\3>4 r4 <ees a c>2
  <f c' d>4. c'8\3 d4\2 e4\2 
  <aes,\4 d\3 fis\2>2. r4
% 17
  <ees bes'>2 <ees bes' ees>2
  <ees bes' d>4 r2 r8 <f bes>8
  <d aes' c>2 c'8 aes8 f4~
  <f b d>2 r2 
% 21
  <c ees bes'>2. r4
  <bes'\4 des g>4 r2.
  <bes,\6 des' f>1
  <g' des'\3 f>2. r4
% 25
  <aes\5 f'>2 r2
  <des,\6 bes' ees>2 <des\6 bes' ees>2
  <ees\6 c' f>2 <ees\6 c'>4  r4
  <a\4 ees'\3 g\2>2 <a\4 d\3 fis\2>2
% 29
  <ees\6 c'\4 f\3>2 <a\4 d\3 fis\2>2
  <g\4 c\3 f\2>4 r4 <g\4 c\3 e\2>4 r4
  <ees a cis>2 <f\4 aes\3 d\2>2
  <ees bes' d>4 s4 <aes\4 d\3 fis>2
}

notesCompingVoice = \relative c' {
  \partial 4
  r4 |
% 1
  <bes\4 ees\3 g\2 d'\1>8 r4. <ees,\6 d'\4 g\3 bes\2>8 r4. |
  <bes'\4 ees\3 g\2 d'\1>2. <c\4 f\3 bes\2 ees\1>4 |
  <d\4 aes'\3 c\2 f\1>2 <c\4 f\3 aes\2 d\1>4 <aes\4 d\3 f\2 c'\1>4 |
  <g\4 d'\3 f\2 b\1>2 <b\4 f'\3 aes\2 d\1>2 |
  \break
% 5
  r4 <c\4 f\3 bes\2 ees\1>2. |
  <bes\4 ees\3 g\2 d'\1>2 <bes ees g c>4 r4 |
  <bes\4 ees\3 aes\2 des\1>2 ees'8\1 des8\1 r4 |
  <bes,\4 ees\3 g\2 des'\1>2 r4 bes'4\1 |
  \break
% 9
  <aes,\4 ees'\3 g\2 c\1>2 <ees'\3 g\2>4 r4 |
  <des,\6 bes'\4 f'\3 aes\2>2 <bes'\4 f'\3>4 r4 |
  <ees,\6 d'\4 g\3 bes\2>2 <d'\4 g\3>4 r4 |
  <c f bes ees>4 r2. |
  \break
% 13
  <c\4 f\3 a\2 ees'\1>8 r8 <c\4 f\3 a\2 ees'\1>2. |
  <a\4 ees'\3 f\2 c'\1>8 r8 <a\4 ees'\3 f\2 c'\1>2. |
  <aes\4 ees'\3 g\2 bes\1>8 <aes\4 ees'\3 g\2 bes\1>4 <aes\4 ees'\3 g\2 bes\1>8[ <aes\4 ees'\3 g\2 bes\1>8] r8 <aes\4 ees'\3 g\2 bes\1>4 |
  <aes\4 d\3 fis\2 bes\1>4 r4 <aes\4 d\3 fis\2 bes\1>8 c'4.\1 |
  \break
% 17
  <bes,\4 ees\3 g\2 d'\1>8 r4. <ees,\6 d'\4 g\3 bes\2>8 r4. |
  <bes'\4 ees\3 g\2 d'\1>2. r8 <c\4 f\3 bes\2 ees\1>8 |
  <d\4 aes'\3 c\2 f\1>2 <c\4 f\3 aes\2 d\1>4 <aes\4 d\3 f\2 c'\1>4 |
  <g\4 d'\3 f\2 b\1>2 <b\4 f'\3 aes\2 d\1>2 |
  \break
% 21
  r4 <c\4 f\3 bes\2 ees\1>2. |
  <bes\4 ees\3 g\2 d'\1>2 <bes ees g c>4 r4 |
  <bes\4 ees\3 aes\2 des\1>2 ees'8\1 des8\1 r4 |
  <bes,\4 ees\3 g\2 des'\1>2 r4 bes'4\1 |
  \break
% 25
  <aes,\4 ees'\3 g\2 c\1>2 <ees'\3 g\2>4 r4 |
  <des,\6 bes'\4 f'\3 aes\2>2 <bes'\4 f'\3>4 r4 |
  <ees,\6 d'\4 g\3 bes\2>4 <ees\6 d'\4 g\3 bes\2>4 r4 <ees\6 d'\4 g\3 bes\2>4 |
  <a\4 d\3 g\2 c\1>4. r8 <a\4 d\3 fis\2 c'\1>4. r8 |
  \break
% 29
  <bes\4 ees\3 g\2 d'\1>4. r8 <c\4 fis\3 a\2 >4. r8 |
  <d\4 g\3 bes\2 f'\1>8 <d\4 g\3 bes\2 f'\1>4 r8 <c\4 g'\3 bes\2 e\1>2 |
  <c\4 f\3 aes\2 ees'\1>4 <c\4 f\3 aes\2 ees'\1>4 <bes\4 f'\3 aes\2 d\1>8 <bes\4 f'\3 aes\2 d\1>8 r4 |
  \tieDown
  <bes\4 ees\3 g\2 d'\1>8 g'8\2 aes4\2~ <bes,\4 f' aes\2 c\1\3>2 |
  \bar "||" 
  \bar "|." 
}

% Consolidations

guitarVoiceA = {
  \globalDefs 
  \omit Fingering
  \omit StringNumber
  \notesVoiceA 
}

guitarVoiceB = {
  \globalDefs 
  \omit Fingering
  \omit StringNumber
  \notesVoiceB 
}

guitarTabA = {
  \globalDefs
  \notesVoiceA
}

guitarTabB = {
  \globalDefs
  \notesVoiceB
}

compingVoice = {
  \globalDefs 
  \omit Fingering
  \omit StringNumber
  \notesCompingVoice
}

compingTab = {
  \globalDefs
  \notesCompingVoice
}

%% -----------------------------------------------------------------

\markup {
  \fullScoreTitleString
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \set ChordNames.midiInstrument = # "acoustic guitar (nylon)"      
      \chordValues
    }
    \new Staff <<
      \new Voice = "guitarVoiceA"
      \guitarVoiceA 
      \new Voice = "guitarVoiceB"
      \guitarVoiceB 
    >>
    \set Staff.midiInstrument = # "acoustic guitar (nylon)"
  >>
  \layout { }
  \midi { }
}

%% -----------------------------------------------------------------
\pageBreak

\markup {
  \fill-line { 
    \center-align \leadSheetTitleString
  }
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \simpleChordValues
    }
    \new Staff <<
      \new Voice = "guitarVoiceA"
      \guitarVoiceA 
    >>
    \new TabStaff <<
      \guitarTabA 
    >>
  >>
  \layout { }
}

%% -----------------------------------------------------------------
\pageBreak

\markup {
  \fill-line { 
    \center-align \chordMelodyTitleString
  }
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordValues
    }
    \new Staff <<
      \new Voice = "guitarVoiceA"
      \guitarVoiceA 
      \new Voice = "guitarVoiceB"
      \guitarVoiceB 
    >>
    \new TabStaff <<
      \guitarTabA 
      \guitarTabB 
    >>
  >>
  \layout { }
}

%% -----------------------------------------------------------------
\pageBreak

\markup {
  \fill-line { 
    \center-align \compingStudyTitleString
  }
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \compingChordValues
    }
    \new Staff <<
      \new Voice = "compingVoice"
      \compingVoice 
    >>
    \new TabStaff <<
      \compingTab
    >>
  >>
  \layout { }
}

%}
