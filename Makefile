CXX = clang++
CXX_FLAGS = -std=c++20  -g -O0 -Wall -Wextra -Iincludes  #-Werror 

.PHONY: test clean

exec: main.o restaurant.o
	${CXX} ${CXX_FLAGS} -lc++abi bin/main.o bin/restaurant.o -o bin/exec -g -fstandalone-debug

main.o: src/main.cc restaurant.o includes/supplier.hpp includes/customer.hpp
	${CXX} ${CXX_FLAGS} -c src/main.cc -g -o bin/main.o

test: test.o restaurant.o
	${CXX} ${CXX_FLAGS} -lc++abi bin/test.o bin/restaurant.o -o bin/test

test.o: tests/catch.hpp tests/test.cc restaurant.o includes/supplier.hpp includes/customer.hpp
	${CXX} ${CXX_FLAGS} -c tests/test.cc -o bin/test.o

restaurant.o: includes/restaurant.hpp src/restaurant.cc includes/supplier.hpp includes/customer.hpp
	${CXX} ${CXX_FLAGS} -c src/restaurant.cc -o bin/restaurant.o

clean:
	-rm -f *.o bin/main bin/test bin/exec bin/main.o bin/restaurant.o bin/test.o
