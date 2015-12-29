#!/bin/bash
httrack http://sphinx-doc.org/index.html

# copy documentation
mkdir -p $PREFIX/doc/sphinx
cp -Rf $SRC_DIR/sphinx-doc.org/* $PREFIX/doc/sphinx

