CC = @CXX@
AM_LDFLAGS = -pthread -lz3 $(LIBOPTS_LDADD)
if COND_STATIC_LINK
  AM_LDFLAGS += -static ../solver/solver-src/solvers.a ../solver/big-int/big-int.a 
endif
AM_CXXFLAGS =  -DHAVE_STDINT_H -Wall $(LIBOPTS_CFLAGS) -g -O2 -DFIB -std=c++11 -D_GLIBCXX_USE_CXX11_ABI=0
AM_CFLAGS = -DHAVE_STDINT_H -Wall $(LIBOPTS_CFLAGS) -g -O2 -DFIB -std=c++11 -D_GLIBCXX_USE_CXX11_ABI=0
#//-O2
INCLUDES = -I ../solver 
bin_PROGRAMS = isp.exe
isp_exe_SOURCES = Socket.cpp ServerSocket.cpp MpiProc.cpp Envelope.cpp \
                  name2id.cpp  Scheduler.cpp  Counter.cpp Transition.cpp TransitionList.cpp \
                  InterleavingTree.cpp utility.cpp Mo.cpp Wu.cpp Encoding.cpp SMTEncoding.cpp \
		  MultiReceive.cpp sched-opt.c main.cpp












