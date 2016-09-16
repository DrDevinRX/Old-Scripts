#!/bin/bash

bk=/mnt/Nepgear/Backup/yt
bk_dir=$bk/"$1"
if [ ! -d "$bk_dir" ]
then
mkdir "$bk_dir"
else
echo -e "$1 already exists! \n Directory not created!"
fi

a_text="$1-Archive.txt"
url="$2"

youtube-dl -i -f bestvideo+bestaudio --write-description --write-info-json --write-annotations --write-thumbnail --download-archive "$bk_dir/$a_text" --write-sub --convert-subs ass --ffmpeg-location "/home/asuna/bin" -o "$bk_dir/%(title)s.%(ext)s" "$url"
