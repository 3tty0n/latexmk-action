#!/bin/sh -l

root_file="$1"
args="$2"

echo "Compiling LaTeX sources..."
latexmk -gg "$args" "$root_file"

echo "Compiled assets: $(realpath main.pdf)"
echo ""
