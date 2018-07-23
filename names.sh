#!/bin/bash
FILES=*.o5m
for f in $FILES
do
  echo "Processing $f file..."
  osmfilter $f --out-key=name > $f-all.txt
  LC_CTYPE=C sort -r $f-all.txt |head -100 > $f-top100.txt
done
