LATEXFILES = *.aux\
        *.bbl\
        *.blg\
        *.ilg\
        *.log\
        *.nlo\
        *.nls\
        *.toc\
        *.aux\
	.Rhistory\
	Rplots.pdf\
	synapter.tex\
	*.dvi\
	*.map\
        *.out\
	*.tikz\
	*tikzDictionary

all:
	make synapter
	make clean

real:
	cp ./MSnbase-demo/MSnbase-demo.Rnw ./MSnbase-demo.Rnw 
	cp ./MSnbase-development/MSnbase-development.Rnw ./MSnbase-development.Rnw 
	cp ./MSnbase-io/MSnbase-io.Rnw ./MSnbase-io.Rnw 

setvars:
ifeq (${R_HOME},)
R_HOME=	$(shell R RHOME)
endif

synapter: 
	cp synapter.Rnw.knitr synapter.Rnw
	"$(R_HOME)/bin/R" --vanilla -e "library(knitr); knit2pdf('synapter.Rnw');"
	## bibtex synapter
	"$(R_HOME)/bin/R" CMD pdflatex synapter.tex


clean:
	rm -f $(LATEXFILES)
	rm -f *~
	rm -rf figure cache
	cp synapter.Rnw.stub synapter.Rnw

pdfclean:
	make clean
	rm synapter.pdf
