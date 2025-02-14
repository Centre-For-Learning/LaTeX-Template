all:
	latexmk -pdf main.tex

clean:
	latexmk -C
	find chapters -maxdepth 1 -type d | xargs -I {} sh -c "cd {}; latexmk -C"

ch\:%:
	cd chapters/$*; \
	latexmk -pdf main.tex

page\:%:
	cd chapters; \
	latexmk -pdf $*.tex
