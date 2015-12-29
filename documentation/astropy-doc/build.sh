#!/bin/bash
httrack http://docs.astropy.org/en/v1.0.5/
echo "Site copied"
# copy documentation
mkdir -p $PREFIX/doc/astropy

echo "Made directory"
#cp -Rf $SRC_DIR/astropy.readthedocs.org/en/v1.0.3/* $PREFIX/doc/astropy
cp -Rf $SRC_DIR/* $PREFIX/doc/astropy