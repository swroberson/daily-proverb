#!/bin/sh

# get Proverb of the day
CURRDIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
DATE=$(date "+%d")
PROVERB=$CURRDIR/text/"$DATE".txt

# generate random number between 1 and [# of lines in PROVERB]
LINES=$(wc -l "$PROVERB")
NUM=$(jot -r 1 1 "$LINES")
# print random line from FILE
echo "$(sed -n "$NUM"p "$PROVERB") \
\n ~ Proverbs "$DATE":"$NUM"" | cowsay -f $CURRDIR/scroll.cow 
