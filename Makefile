filename=Tesi

all: pdf read

pdf: 
	bibtex ${filename}.aux
	pdflatex ${filename}.tex

read:
	evince ${filename}.pdf &

aread:
	acroread ${filename}.pdf &

clean:
	rm -f ${filename}.lof ${filename}.lot ${filename}.pdf ${filename}.log ${filename}.aux ${filename}.out ${filename}.dvi ${filename}.bbl ${filename}.blg ${filename}.*~

dropbox: pdf
	cp ${filename}.pdf ~/Dropbox/Public/${filename}.pdf
