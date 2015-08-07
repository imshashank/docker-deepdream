#!/usr/bash

target=$1
if test "$(ls -A "$target")"; then
    echo "Notebooks found!"
else
    echo "Couldn't find any notebook, downloading deepdream from github"
    git clone https://github.com/google/deepdream.git notebooks/deepdream
fi

ipython notebook --no-browser --port 8888
