#!/bin/bash
httrack http://nucleic.github.io/enaml/docs/

# copy documentation
mkdir -p $PREFIX/doc/enaml
cp -Rf $SRC_DIR/nucleic.github.io/enaml/docs/* $PREFIX/doc/enaml

