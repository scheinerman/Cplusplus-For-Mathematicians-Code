CXXFLAGS = -I /Users/ers/Common/include

.phony:	all
all:	pascal.gif pascal.eps pascal.pdf

pascal.eps:	pascal.gif
	convert pascal.gif pascal.eps

pascal.pdf:	pascal.eps
	epstopdf pascal.eps

pascal.gif: 	pascal
	./pascal

pascal:	pascal.o
	g++ pascal.o -o pascal -L/Users/ers/Common/lib -lplotter

.phony: clean

clean:
	rm -f pascal.o pascal 