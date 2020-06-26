#use gmake!
name=p_values_chapter
bibfile=p-values.bib
#sname=onion-kegg-example.xml

.PHONY: all clean

all: $(name).pdf 

$(name).pdf: $(name).tex $(bibfile)
	#pdflatex $(name).tex
	#bibtex $(name)
	pdflatex $(name).tex
	pdflatex $(name).tex

clean: 
	rm -f $(name).bbl $(name).blg $(name).log $(name).nav $(name).toc $(name).aux $(name).snm $(name).out *~
	mv $(name).pdf $(name).old.pdf


