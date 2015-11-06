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
		sed -n '/#/!p' input.contain >> .temp.contain
		echo "Transforming input.contain --> output.con.ta ..."
		bin/createContainment.sh .temp.contain output.con.ta
		rm .temp.contain
		;;
	*)
		echo no
		;;
esac
