#!/bin/bash
httrack https://traitsui.readthedocs.org/en/latest/

# copy documentation
mkdir -p $PREFIX/doc/traitsui
cp -Rf $SRC_DIR/traitsui.readthedocs.org/en/latest/* $PREFIX/doc/traitsui

