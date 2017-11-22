#!/bin/sh
find . -type f -iname "*.csv" > ./flist.txt
find . -type f -iname "*.txt" >> ./flist.txt
find . -type f -iname "*.out" >> ./flist.txt
find . -type f -iname "*.rb" >> ./flist.txt
find . -type f -iname "*.py" >> ./flist.txt
find . -type f -iname "*.htm*" >> ./flist.txt
find . -type f -iname "*.md" >> ./flist.txt
find . -type f -iname "*.json" >> ./flist.txt
find . -type f -iname "*.sh" >> ./flist.txt
find ./cncf-config -type f >> ./flist.txt
./handle_forbidden_data.rb `cat flist.txt`
rm ./flist.txt