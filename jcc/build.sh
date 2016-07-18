#!/bin/bash

export JCC_JDK=$PREFIX
export JAVA_HOME=$JCC_JDK
export JAVAHOME=$JCC_JDK
# export LD_LIBRARY_PATH=$PREFIX/jre/lib/amd64/server:$PREFIX/jre/lib/amd64:$LD_LIBRARY_PATH

export JCC_ARGSEP=";"
export JCC_INCLUDES="$PREFIX/include;$PREFIX/include/linux"
export JCC_LFLAGS="-L$PREFIX/jre/lib/amd64;-ljava;-L$PREFIX/jre/lib/amd64/server;-ljvm;-lverify;-Wl,-rpath=$PREFIX/jre/lib/amd64:$PREFIX/jre/lib/amd64/server"
export JCC_JAVAC=$PREFIX/bin/javac

$PYTHON setup.py install

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
