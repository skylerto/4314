#!/bin/bash

if [ $# -lt 2 ]; then
	echo 'Usage: ' $(basename $0) ' [contain file] [output relation file]'
	exit -1
fi
java -Xms256M -Xmx1024M -classpath "lib/*" ca.uwaterloo.cs.ql.Main lib/addcontain.ql $1 etc/base-relation.ta $2.tmp

if [ -e $2.tmp ]; then
	cat etc/layout.ta $2.tmp > $2 && rm $2.tmp
fi
