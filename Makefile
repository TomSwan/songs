# Makefile

blddir = build

targets = $(blddir)/songs.html \
$(blddir)/sets.html

all: ${targets}

$(blddir)/songs.html : config.adoc back.adoc songs.adoc songs.txt titles/*.adoc
	@echo "! MAKING songs"
	rm -f $(blddir)/songs.html
	asciidoctor songs.adoc
	cp songs.html $(blddir)/index.html
	mv songs.html $(blddir)
	rm -f $(blddir)/songs.pdf
	asciidoctor-pdf songs.adoc
	cp songs.pdf /home/admin/Dropbox/Shared
	mv songs.pdf $(blddir)
	@echo "! COPYING other files"
	cp -u css/*.* $(blddir)/css

$(blddir)/sets.html : config.adoc back.adoc sets.adoc sets.txt titles/*.adoc
	@echo "! MAKING sets"
	rm -f $(blddir)/sets.html
	asciidoctor sets.adoc
	mv sets.html $(blddir)
	rm -f $(blddir)/sets.pdf
	asciidoctor-pdf sets.adoc
	cp sets.pdf /home/admin/Dropbox/Shared
	mv sets.pdf $(blddir)

clean:
	@echo "! REMOVING BUILD TARGETS "$*
	rm -v -f ${targets}
	rm -v -f $(blddir)/*.*
