#!/bin/bash

cd $MIRRORS

for D in `find . -type d -maxdepth 1`
do
    echo "Updating $D ..."
    date

    cd $D
    git fetch -p origin
    git push --mirror
    cd ..
done
