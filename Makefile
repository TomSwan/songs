# Makefile

blddir = build

targets = $(blddir)/songs.html

all: ${targets}
    
$(blddir)/songs.html : songs.txt
	@echo "! MAKING songs"
	rm songs.html
	asciidoctor songs.txt
	cp songs.html $(blddir)/index.html
	cp songs.html $(blddir)
	rm songs.pdf
	asciidoctor-pdf songs.txt
	cp songs.pdf /home/admin/Dropbox/Shared
	cp songs.pdf $(blddir)
	@echo "! MAKING sets"
	rm sets.pdf
	asciidoctor-pdf sets.txt
	cp sets.pdf /home/admin/Dropbox/Shared
	@echo "! COPYING other files"
	cp -u css/*.* build/css

clean:
	@echo "! REMOVING BUILD TARGETS "$*
	rm -v -f ${targets}
	rm -v -f $(blddir)/*.*
