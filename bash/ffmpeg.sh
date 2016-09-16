#!/bin/sh
##cd "${0%/*}"

mkdir "/mnt/Neptune/${PWD##*/}"
for i in *.mkv
do
ffmpeg -i "$PWD/${i}" -y -map 0 -c:v libx264 -crf 20 -preset veryfast -tune animation -c:a:0 libfdk_aac -b:a:0 256k -c:a:1 libfdk_aac -b:a:1 256k -c:a:2 libfdk_aac -b:a:2 256k -c:s copy "/mnt/Neptune/${PWD##*/}/${i}"
done

