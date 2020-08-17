# Makefile

blddir=build

targets= $(blddir)/songs.html

all: ${targets}
    
# % in the rule == $* in the action
# $< is the first prerequisite
# $@ is the target that triggered the rule
# % is also the target but used _in_ the rule

$(blddir)/songs.html : songs.txt
	@echo "! MAKING songs"
	asciidoctor songs.txt
	cp songs.html $(blddir)/index.html
	mv songs.html $(blddir)
	asciidoctor-pdf songs.txt
	cp songs.pdf /home/admin/Dropbox/Shared
	mv songs.pdf $(blddir)
	cp -u css/*.* build/css

clean:
	@echo "! REMOVING BUILD TARGETS "$*
	rm -v -f ${targets}
	rm -v -f $(blddir)/*.*
