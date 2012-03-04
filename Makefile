filename=Tesi

all: pdf read

pdf: 
	pdflatex ${filename}.tex

remake: pdf bibtex pdf

bibtex:
	bibtex ${filename}.aux

read:
	evince ${filename}.pdf &

aread:
	acroread ${filename}.pdf &

clean:
	rm -f ${filename}.lof ${filename}.lot ${filename}.pdf ${filename}.log ${filename}.aux ${filename}.out ${filename}.dvi ${filename}.bbl ${filename}.blg ${filename}.*~

dropbox: pdf
	cp ${filename}.pdf ~/Dropbox/Public/${filename}.pdf
	cp -a ~/dev/mocambos-tesi-vt ~/Dropbox/Tesi/
