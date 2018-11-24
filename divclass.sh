#!/bin/bash

echo "running divclass.sh"

for file in build/*.html
do
    echo "divclass-ifying $file"
    divclass < $file > build/tmpfile
    rm $file
    mv build/tmpfile $file
done
