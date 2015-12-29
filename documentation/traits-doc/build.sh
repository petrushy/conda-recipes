#!/bin/bash
httrack https://traits.readthedocs.org/en/4.4.0/

# copy documentation
mkdir -p $PREFIX/doc/traits
cp -Rf $SRC_DIR/traits.readthedocs.org/en/4.4.0/* $PREFIX/doc/traits

