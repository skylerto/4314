#!/bin/bash
if [ $# -lt 1 ]; then
	echo 'Usage:' $(basename $0) ' [applied containment file]'
	exit -1
fi

java -Xms256M -Xmx1024M -jar lib/lseditor-7.3.13.jar $1
