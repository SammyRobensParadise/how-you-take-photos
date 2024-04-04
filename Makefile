# makefile


.PHONY: help


help:
	@echo "--- Options ---"
	@echo "markdown ...... generates markdown files from  *.ipynb files"

MYDIR = .

markdown:
	jupyter nbconvert ./src/script.ipynb --to markdown --output script.md