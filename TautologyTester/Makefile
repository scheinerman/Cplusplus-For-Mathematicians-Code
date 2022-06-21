CXXFLAGS = -Wall -ansi -pedantic -O3
OBJS = Token.o Expression.o LookupTable.o TautologyChecker.o \
       ExpressionLoader.o main.o

tautology: $(OBJS)
	g++ $(OBJS) -o tautology

do: tautology
	./tautology

clean:
	rm -f *.o

dist-clean:
	rm -f *.o tautology