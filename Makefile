FLAGS = -lrt
OBJS = circuit.o main.o

all: $(OBJS)
	g++ $(FLAGS) -o tpar $(OBJS)

circuit.o: src/circuit.cpp src/topt.cpp
	g++ -c $(FLAGS) src/circuit.cpp

main.o: src/main.cpp
	g++ -c $(FLAGS) src/main.cpp

clean: 
	rm *.o
