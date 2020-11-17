#!/bin/bash
# bonnie-test.sh

DATE=`date +%Y%m%d-%H%M%S`
CMD=/usr/local/bonnie/sbin/bonnie++
# SDIR=/home/vagrant/tools/bonnie/testdir
SDIR=./testdir

: '
Size 1536MB, Chunk-size 1KB (1024)
File number (100 ea) for creating test
Ram 512M
User root, Group root
'

[ ! -d $SDIR ] && mkdir -p $SDIR
$CMD -d $SDIR -s 1536:1024 -n 100 -m `hostname` -r 512 -u0:0 > `hostname`-${DATE}.txt
tail -n 1 `hostname`-${DATE}.txt | /usr/local/bonnie/bin/bon_csv2html > `hostname`-${DATE}.html
