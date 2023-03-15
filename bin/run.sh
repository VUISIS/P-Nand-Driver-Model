#!/bin/sh

ROOTDIR=`dirname "$0"`/..
mkdir -p $ROOTDIR/evaluation
for testname in "alpha0"  "alpha4"  "alpha5"  "alpha6" "foxtrot0"  "foxtrot1"  "foxtrot2"; do
    rm -rf $ROOTDIR/work
    mkdir $ROOTDIR/work
    p check $ROOTDIR/PGenerated/POutput/net6.0/Nand.dll -tc "$testname"Single --outdir $ROOTDIR/work
    mv $ROOTDIR/work/BugFinding/Nand_0_0.txt $ROOTDIR/evaluation/"$testname".txt
done
