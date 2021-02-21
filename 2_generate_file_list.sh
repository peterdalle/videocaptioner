#!/bin/bash
# generate a list of jpg file names with prefix/suffix that matches ffmpeg -i command
ls ./detected/deaths-mod | grep jpg | sed "s/.*/file 'detected\/deaths-mod\/&'/" > files.txt
