CXXFLAGS = -ansi -pedantic -Wall -O3
OBJS = Polygram.o PolygramCounter.o main.o

polygram: $(OBJS)
	g++ $(OBJS) -o polygram

clean:
	rm -f $(OBJS)

dist-clean:
	rm -f $(OBJS) polygram
