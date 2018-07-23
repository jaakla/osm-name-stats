#!/bin/bash
FILES=*.pbf
for f in $FILES
do
  echo "Processing $f file..."
  /Users/jaak/git/osm-name-stats/osmconvert  $f -o=$f.o5m
done
