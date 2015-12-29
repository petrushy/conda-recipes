#!/bin/bash
httrack http://ipython.org/ipython-doc/3/

# copy documentation
mkdir -p $PREFIX/doc/ipython
cp -Rf $SRC_DIR/ipython.org/ipython-doc/3/* $PREFIX/doc/ipython

