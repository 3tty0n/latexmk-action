#!/bin/sh -l

root_file="$1"
args="$2"
working_dir="$3"
extra_packages="$4"
default_args="-gg -pdf -shell-escape -file-line-error -interaction=nonstopmode"

if [ -n "$extra_packages" ]; then
  apt-get update
  apt-get install -y "$extra_packages"
fi

if [ -n "$working_dir" ]; then
  cd "$working_dir" || exit 1
fi

echo "Compiling LaTeX sources..."
echo ""
if [ -z "$args" ]; then
  if ! latexmk "$default_args" "$root_file"; then
    echo "Compilation failed."
    echo ""
    exit 1
  fi
else
  if ! latexmk "$args" "$root_file"; then
    echo "Compilation failed."
    echo ""
    exit 1
  fi
fi

echo "Compiled assets: $(realpath main.pdf)"
echo ""
