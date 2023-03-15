#!/bin/sh

ROOTDIR=`dirname "$0"`/..
cd $ROOTDIR
if [$(type pc)]; then
  pc -proj:Nand.pproj
else
  p compile -pp Nand.pproj
fi
