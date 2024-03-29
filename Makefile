# Makefile

project=songs
compiler=asciidoctor
blddir=~/sites/tomswan/layouts/partials/pub
pubdir=~/sites/tomswan/static/pub/songs
imagedir=image
datadir=data
shared=~/Dropbox/Shared

targets=$(project).html

all: ${targets}

%.html : %.adoc $(project).txt $(project).adoc titles/*.adoc
	$(compiler) -D $(blddir) -s $<
	$(compiler) $<
	$(compiler)-pdf $<
	rsync -avz $(datadir)/ $(pubdir)/$(datadir)
	rsync -avz $(imagedir)/ $(pubdir)/$(imagedir)
	cp $(project).pdf $(shared)

refresh:
	cp $(project).pdf $(shared)

clean:
	rm -v -f ${targets}
	rm -v -f $(project).pdf
