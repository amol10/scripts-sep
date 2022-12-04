#!/bin/bash

f=1

case $f in
	1)
		prefix="Noto"
		regular="${prefix}-Serif-Regular"
		bold="${prefix}-Serif-Bold"
		;;
	2)
		prefix="FreeSerif"
		regular="${prefix}"
		bold="${prefix}-Bold"
		;;
	*)
		exit 1;
esac
