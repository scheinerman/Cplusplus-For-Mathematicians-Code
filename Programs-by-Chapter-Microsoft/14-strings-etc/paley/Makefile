paley.pdf:	paley.eps
	epstopdf paley.eps

paley.eps:	paley
	./paley 17



OBJS = paley.o Mod.o gcdx.o
paley:	$(OBJS)
	g++ $(OBJS) -o paley -L/Users/ers/Common/lib -lplotter

CXXFLAGS = -I /Users/ers/Common/include

.phony:	clean

clean:
	rm -f paley $(OBJS)
