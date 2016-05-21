#!/bin/bash

cd $MIRRORS
pwd
date

for D in `find . -maxdepth 1 -type d -name *`
do
    echo "Updating $D ..."

    cd $MIRRORS # reset directory
    cd $D
    git fetch -p origin
    git push --mirror
done

date
echo "... Updates completed"
