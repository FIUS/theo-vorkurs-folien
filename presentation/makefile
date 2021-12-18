# Copyright 2018, 2019, 2020, 2021 FIUS
#
# This file is part of theo-vorkurs-folien.
#
# theo-vorkurs-folien is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# theo-vorkurs-folien is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with theo-vorkurs-folien.  If not, see <https://www.gnu.org/licenses/>.

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