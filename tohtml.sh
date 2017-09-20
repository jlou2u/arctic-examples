#!/usr/bin/env bash

if [[ $# -ne 1 ]] ; then
    echo 'usage: tohtml.sh <notebook name>'
    exit 1
fi

if [ ! -f "$1.ipynb" ] ; then
    echo "$1.ipynb not found"
    exit 1
fi

jupyter-nbconvert --to notebook --ExecutePreprocessor.timeout=600 --execute $1 --output $1
jupyter-nbconvert --to html $1
