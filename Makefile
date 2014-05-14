CXX = g++

CFLAGS = -Wall -g
 
#INCLUDES = -I/Users/markfogleman/dev_projects/C++_projects/tbb42_20140122oss/include
#INCLUDES += -I/Users/markfogleman/dev_projects/C++_projects/boost_1_55_0/

#LFLAGS = -L/Users/markfogleman/dev_projects/C++_projects/tbb42_20140122oss/lib

#LIBS = -ltbbmalloc

SRCS = executor.cpp brownian2D.cpp

OBJS = $(SRCS:.cpp=.o)

MAIN = go

all:	$(MAIN)

$(MAIN): $(OBJS)
	$(CXX) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(OBJS) $(LFLAGS) $(LIBS)

.cpp.o:
	$(CXX) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	rm *.o $(MAIN)

