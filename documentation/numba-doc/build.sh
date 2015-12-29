#!/bin/bash
httrack http://numba.pydata.org/numba-doc/0.18.2/

# copy documentation
mkdir -p $PREFIX/doc/numba
cp -Rf $SRC_DIR/http://numba.pydata.org/numba-doc/0.18.2/* $PREFIX/doc/numba

