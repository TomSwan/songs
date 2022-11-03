# Makefile

project=songs
compiler=asciidoctor
blddir=~/sites/tomswan/layouts/partials/pub
shared=~/Dropbox/Shared

targets=$(project).html

all: ${targets}

%.html : %.adoc $(project).txt $(project).adoc titles/*.adoc
	$(compiler) -D $(blddir) -s $<
	$(compiler) $<
	$(compiler)-pdf $<
	cp $(project).pdf $(shared)

refresh:
	cp $(blddir)/$(project).pdf $(shared)

clean:
	rm -v -f ${targets}
	rm -v -f $(project).pdf
