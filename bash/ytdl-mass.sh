#!/bin/bash

bk="$1"
bk_dir=$bk/"$2"
if [ ! -d "$bk_dir" ]
then
mkdir "$bk_dir"
else
echo -e "$2 already exists!\nDirectory not created!"
fi

a_text="$2-Archive.txt"
url="$3"

youtube-dl -i -f bestvideo+bestaudio --write-description --write-info-json --write-annotations --write-thumbnail --download-archive "$bk_dir/$a_text" --write-sub --convert-subs ass --ffmpeg-location "${HOME}/bin" -o "$bk_dir/%(title)s.%(ext)s" "$url"
