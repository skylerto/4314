#!/bin/bash

if [ $# -lt 1 ]; then
	echo 'Usage' $(basename $0) ' lse|transform'
	exit 1
fi
case $1 in
	lse)
		echo "Launching LSEdit ..."
		bin/runLSEdit.sh output.con.ta
		;;
	transform)
		echo "Transforming input.contain --> output.con.ta ..."
		bin/createContainment.sh input.contain output.con.ta
		;;
	*)
		echo no
		;;
esac
