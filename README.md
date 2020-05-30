# HERMES

There are three steps to running this tool for checking a program for a deadlock.

1. Instrument the source code.
2. Compile and profile the instrumented code into an executable.
3. Execute the profiled code for the output.

The detailed instructions are as follows:

## 1. Instrument

We have used clang to instrument the source code. You will require clang and llvm build files which are shipped with Hermes.

Compiling clangTool requires:
* a file called _compile\_commands.json_ which is a compilation database needed for clang tooling. The directory contains a sample compile_commands.json file. You just have to specify the command, fileName, and the directory. Learn how to create such files [here](https://clang.llvm.org/docs/JSONCompilationDatabase.html). This file requires the benchmark name, the path to directory where this benchmark lies, and the compilation command in it. Please change these things accordingly in the file (especially the path to clang lib).

To compile the clang tool, use  `cd clangTool && make clangTool`

To produce the instrumented code, run: `./clangTool path-to-the-source/source-file.cpp`

This will generate a file called __i\_source-file.cpp__ in the same directory where the source resides.

## 2. Compile and profile

Install mpi (`sudo apt-get install mpich`) and z3 (`sudo apt-get install libz3-dev` or following the steps [here] (https://github.com/Z3Prover/z3#building-z3-using-make-and-gccclang)) before configuring.

Follow these steps:
* `cd Hermes/`
* `./configure`
* `make`
* `sudo make install`
* `cd scheduler`

If `./configure` command can not find mpi.h, try using this command: `./configure --with-mpi-inc-dir=/usr/include/mpich`

Please make sure that you are following the 11th standard of C++ version. If after running `make`, you get some errorsof the form `'to_string' is not a member of 'std'`, then you will have to do some changes in the Makefile of the project. Set the following flags: `-g -O2 -DFIB -std=c++11 -D_GLIBCXX_USE_CXX11_ABI=0` for CFLAGS and CXXFLAGS in the Makefile of the project as well as in the Makefile of the scheduler directory.

This should generate _libisp\_prof.so_ in _/usr/local/lib/_.

To generate the profiled executable, run: 

`ispcxx -o executable executable.cpp ../clangTool/GenerateAssumes.cpp ../clangTool/IfInfo.cpp ../profiler/Client.c` where executable.cpp is your instrumented benchmark file.

## 3. Execute

Run the executable through the tool isp with this command: `./isp.exe -n no-of-processes ./executable`

You can find all the options isp provides using `./isp.exe -help`
