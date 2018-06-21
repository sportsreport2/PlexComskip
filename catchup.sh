#!/bin/bash

find /Volumes/WD\ Elements\ 2/Video/TV\ Shows -type f -name "*.ts" -not -path "*Silicon Valley/*" | while read line; do
	echo "Processing file '$line'"
	/Applications/PlexComskip/PlexComskip.py "$line" >> results.out
	echo "Done processing file '$line'"
done

