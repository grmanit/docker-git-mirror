#!/bin/bash

cd $MIRRORS
pwd
date

for D in `find . -type d -maxdepth 1`
do
    echo "Updating $D ..."

    cd $D
    git fetch -p origin
    git push --mirror
    cd ..
done

pwd
date
echo "... Updates completed"
