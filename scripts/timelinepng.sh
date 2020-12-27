#!/bin/bash

OUTDIR=timeline
TILEX=1920
TILEY=1080
WORKDIR=$OUTDIR/tmp

commits=$(git log |grep commit|cut -d " " -f2|tac)

if [ ! -d $WORKDIR ] ; then
  mkdir -p $WORKDIR
fi

FRAME=0
for c in $commits ; do
  echo "Checking out $c"
  BY=$(git show -s --format="%a$c")
  DATE=$(git show -s --format="%a$d")
  PFRAME=$(printf "%03d" $FRAME)
  git checkout $c
  for m in *.json; do
    NAME=${m%%.*}
    tmxrasterizer $m $WORKDIR/$PFRAME_$NAME.png
  done

  # create empty frame
  montage -geometry $TILEXx$TILEY+2+2 -tile 5x5 -background black $WORKDIR/* $OUTDIR/$PFRAME.png 

  rm $WORKDIR/*

  let FRAME=$FRAME+1
done
