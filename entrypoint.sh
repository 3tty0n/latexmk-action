#!/bin/sh -l

root_file="$1"
args="$2"
working_dir="$3"
default_args="-gg -pdf -shell-escape -file-line-error -interaction=nonstopmode"

if [ -n "$working_dir" ]; then
  cd "$working_dir"
fi

echo "Compiling LaTeX sources..."
echo ""
if [ -z "$args" ]; then
  latexmk "$default_args" "$root_file"
else
  latexmk "$args" "$root_file"
fi

echo "Compiled assets: $(realpath main.pdf)"
echo ""
