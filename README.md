# latexmk-action

![](https://github.com/3tty0n/latexmk-action/workflows/Testing%20Github%20Action/badge.svg)

GitHub Action to compile LaTeX documents using `latexmk`.

## Inputs

* `root_file`:

    The root LaTeX file to be compiled. This input is required.

* `args`:

    The extra arguments to be passed to the LaTeX engine.

    By default, it is `-pdf -shell-escape -file-line-error -interaction=nonstopmode`.
    This tells `latexmk` to use `pdflatex`.

    Refer to [`latexmk` document](http://texdoc.net/texmf-dist/doc/support/latexmk/latexmk.pdf) for more information.

* `working_dir`:

    The workspace where the `latexmk` command is executed.

* `extra_packages`:

    Extra packages you need.

## Example

Put `main.yml` containing the following at `.github/workflows` directory.

```yml
name: Build LaTeX document
on: [push, pull_request]
jobs:
  build_latex:
    runs-on: ubuntu-latest
    steps:
      - name: Set up Git repository
        uses: actions/checkout@v1
      - name: Compile LaTeX document
        uses: 3tty0n/latexmk-action@master
        with:
          root_file: main.tex
```
