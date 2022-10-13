FILES = paper.md 

OUTPUT = build

FLAGS = --bibliography=references.bib \
		--csl=bibliography.csl \
		-s \
		-f markdown

FLAGS_PDF = --template=template.tex

all: pdf

pdf:
	pandoc -o $(OUTPUT)/paper.pdf $(FLAGS) --citeproc $(FILES)

ieeepdf:
	pandoc -o $(OUTPUT)/ieeepaper.pdf $(FLAGS) $(FLAGS_PDF) --citeproc $(FILES)

latex:
	pandoc -o $(OUTPUT)/paper.tex $(FLAGS) --biblatex $(FILES)

ieeelatex:
	pandoc -o $(OUTPUT)/ieeepaper.tex $(FLAGS) $(FLAGS_PDF) --biblatex $(FILES)

clean:
	rm build/*

