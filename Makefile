EXECUTABLE=jerkcity

.PHONY: clean tags

all:
	g++ -O0 -o $(EXECUTABLE) --std=c++0x `pkg-config --libs --cflags opencv` *.cc -g

clean:
	rm -f $(EXECUTABLE)

tags:
	ctags -R
