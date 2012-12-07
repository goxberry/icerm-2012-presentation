# Simple Makefile to build presentation.
# Requires beamer, latex, dvipdf.

# Root filename of presentation
TALK:=icerm_presentation
# Literal for comma
COMMA:= ,
# Suffixes of output files that can be deleted upon clean
OUT:= ,.aux ,.dvi ,.log ,.nav ,.out ,.pdf ,.snm ,.toc
# Output files that can be deleted upon clean
OUTPUT_FILES= $(subst $(COMMA),$(TALK),$(OUT))

all:
	latex $(TALK).tex
	dvipdf $(TALK).dvi

# Remove all of the output files
clean:
	-rm $(OUTPUT_FILES)