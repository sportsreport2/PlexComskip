#!/bin/bash

infile="$1"
outfile=$(echo "$infile" | sed 's/ts$/srt/')
echo -n "Processing '$infile'..."
ffmpeg -nostdin -loglevel quiet -f lavfi -i movie="${infile}"[out+subcc]  -map 0:1 "${outfile}" >/dev/null 2>&1
echo "done."


ffmpeg -f lavfi -i movie=Ghosted\ \(2017\)\ -\ S01E12\ -\ The\ Premonition.ts[out+subcc]  -map 0:1 Ghosted\ \(2017\)\ -\ S01E12\ -\ The\ Premonition.srt >/dev/null 2>&1

ffmpeg -i Ghosted\ \(2017\)\ -\ S01E12\ -\ The\ Premonition.ts -map 0:s:0 Ghosted\ \(2017\)\ -\ S01E12\ -\ The\ Premonition.srt

ffmpeg -f lavfi -i movie=Ghosted\ \(2017\)\ -\ S01E12\ -\ The\ Premonition.ts[out+subcc] -map 0:1 Ghosted\ \(2017\)\ -\ S01E12\ -\ The\ Premonition.srt