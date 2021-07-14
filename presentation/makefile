TEX_INPUTS = $(wildcard */day-*.tex)
PDF_OUTPUTS = $(TEX_INPUTS:.tex=.pdf)

all: build clean

build: $(PDF_OUTPUTS)

cleanall: clean
	rm -f */day-*.ps
	rm -f */day-*.pdf
	rm -f */day-*.dvi

clean:
	rm -f */day-*.aux
	rm -f */day-*.bbl
	rm -f */day-*.blg
	rm -f */day-*.glo
	rm -f */day-*.idx
	rm -f */day-*.log
	rm -f */day-*.toc
	rm -f */day-*.out
	rm -f */day-*.synctex*
	rm -f */day-*.fls
	rm -f */day-*.fdb_latexmk
	rm -f */day-*.nav
	rm -f */day-*.snm
	rm -f */day-*.vrb

.SECONDEXPANSION:

%.pdf:
	cd $(@D) && latexmk -pdf $(*F).tex

day-%:
	cd slides && latexmk -pdf $(@).tex