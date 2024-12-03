#!/bin/bash

target_directory="."

for item in "$target_directory"/*; do
    if [ -d "$item" ]; then
        echo "$item є директорією"
    elif [ -f "$item" ]; then
        new_dir="${item}_dir"
        mkdir "$new_dir"
        mv "$item" "$new_dir/"
        echo "$item переміщено в $new_dir"
    fi
done
