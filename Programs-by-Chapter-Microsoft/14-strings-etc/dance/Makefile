dance.pdf:	dance.eps
	epstopdf dance.eps

dance.eps:	dance.gif
	convert dance.gif dance.eps

dance.gif: dance
	./dance 50000


OBJS = dance.o Point.o uniform.o
dance:	$(OBJS)
	g++ $(OBJS) -o dance -L/Users/ers/Common/lib -lplotter

CXXFLAGS = -I /Users/ers/Common/include

.phony:	clean

clean:
	rm -f dance $(OBJS)