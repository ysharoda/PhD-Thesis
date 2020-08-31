
all: install_pyg build

.PHONY: build  
build : 
	pdflatex --shell-escape thesis.tex
	bibtex thesis 
	bibtex thesis 
	pdflatex --shell-escape thesis.tex 
	bibtex thesis 

.PHONY: install_pyg
install_pyg : 
ifeq ($(shell which pygmentize),)
	brew install pygments
endif
