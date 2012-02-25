filename=Tesi

all: pdf read

pdf: 
	pdflatex ${filename}.tex

read:
	evince ${filename}.pdf &

aread:
	acroread ${filename}.pdf &

clean:
	rm -f ${filename}.lof ${filename}.lot ${filename}.pdf ${filename}.log ${filename}.aux ${filename}.out ${filename}.dvi ${filename}.bbl ${filename}.blg ${filename}.*~

