#!/bin/bash

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)
fullpath=$(cat $script_dir/path.txt)
mkdir -p $fullpath

while [ 1 ] 
do
	date > $fullpath/top.txt
	top -b -n 1 >> $fullpath/top.txt
	echo -n .
	sleep 2
done
