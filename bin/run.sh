#!/bin/sh

ROOTDIR=`dirname "$0"`/..
mkdir -p $ROOTDIR/evaluation
for testname in "alpha0"  "alpha4"  "alpha5"  "alpha6" "foxtrot0"  "foxtrot1"  "foxtrot2"; do
    rm -rf $ROOTDIR/work
    mkdir $ROOTDIR/work
    coyote test $ROOTDIR/POutput/netcoreapp3.1/Nand.dll --method PImplementation."$testname"Single.Execute --outdir $ROOTDIR/work
    mv $ROOTDIR/work/CoyoteOutput/Nand_0_0.txt $ROOTDIR/evaluation/"$testname".txt
done
