#!/bin/bash


# copy documentation
mkdir -p $PREFIX/doc/orekit
cp -Rf $RECIPE_DIR/site/* $PREFIX/doc/orekit

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
