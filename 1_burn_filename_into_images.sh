#!/bin/bash
# pull date from filename and burn it into image frame using ffmpeg and append -mod.jpg to filename.
for file in ./detected/deaths/*.jpg; do
   datum=${file:18:${#i}-16}
   echo -i "$file" -vf \'drawtext=text=$datum\' "$file-mod.jpg"
   ./ffmpeg-bin/ffmpeg -y -i "$file" -filter_complex "[0:v]pad=iw:ih+180:0:(oh-ih)/2:color=white@0.2, drawtext=text='Notera hur Y-axeln förändras':fontfile=arial.ttf:fontsize=60:x=(w-tw)/2:y=(85-th)/2, drawtext=text='$datum':fontcolor=black:fontfile=arial.ttf:fontsize=40:x=(w-tw)-15:y=h-45-(th/2)" "$file-mod.jpg"
done
