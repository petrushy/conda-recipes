#!/bin/bash
httrack http://matplotlib.org/basemap/

# copy documentation
mkdir -p $PREFIX/doc/basemap
cp -Rf $SRC_DIR/matplotlib.org/basemap/#/* $PREFIX/doc/basemap

