
.PHONY: build  
build : 
	pdflatex --shell-escape thesis.tex 
	Bibtex thesis 
	pdflatex --shell-escape thesis.tex 
	Bibtex thesis 

  
