MEX = mex
CXX ?= g++
CC ?= gcc
CFLAGS = -Wall -Wconversion -O3 -Wl,--as-needed -fPIC
CXXFLAGS = -Wall -Wconversion -O3 -Wl,--as-needed -fPIC
MEX_OPTION = CC\#$(CC) CFLAGS\#"$(CFLAGS)" \
						 CXX\#$(CXX) CXXFLAGS\#"$(CXXFLAGS)"
MEX_EXT = $(shell mexext)

%.$(MEX_EXT): %.cpp
	$(MEX) $(MEX_OPTION) $<

clean:
	rm -f *.$(MEX_EXT)
