#!/bin/sh -l

root_file="$1"
args="$2"

latexmk "$args" "$root_file"
