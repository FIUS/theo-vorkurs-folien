TEX_DEPS_COMMON = $(wildcard *.tex)
TEX_INPUTS = $(wildcard */day-*.tex)
PDF_OUTPUTS = $(TEX_INPUTS:.tex=.pdf)

all: build clean

build: $(PDF_OUTPUTS)

clean:
	rm -f */day-*.{aux,bbl,blg,glo,idx,log,toc,out,synctex.gz,fls,fdb_latexmk,nav,snm,vrb}

cleanall: clean
	rm -f */day-*.{ps,pdf,dvi}

.SECONDEXPANSION:

%.pdf: $$(@D)/*.tex $(TEX_DEPS_COMMON)
	cd $(@D) && latexmk -pdf $(*F).tex

