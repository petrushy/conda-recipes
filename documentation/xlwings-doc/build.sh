#!/bin/bash
httrack http://docs.xlwings.org/en/latest/

# copy documentation
mkdir -p $PREFIX/doc/xlwings
cp -Rf $SRC_DIR/docs.xlwings.org/en/latest/* $PREFIX/doc/xlwings

