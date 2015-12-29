#!/bin/bash
cd doc
python make.py html

# copy documentation
mkdir -p $PREFIX/doc/matplotlib
cp -Rf $RECIPE_DIR/doc/build/html/* $PREFIX/doc/matplotlib

