# latexmk-action

![](https://github.com/3tty0n/latexmk-action/workflows/Testing%20Github%20Action/badge.svg)

GitHub Action to compile LaTeX documents using `latexmk`.

## Inputs

* `root_file`

    The root LaTeX file to be compiled. This input is required.
    
* `args`
    The extra arguments to be passed to the LaTeX engine. 
    
    By default, it is `-pdf -shell-escape -file-line-error -interaction=nonstopmode`. 
    This tells `latexmk` to use `pdflatex`. 
    
    Refer to [`latexmk` document](http://texdoc.net/texmf-dist/doc/support/latexmk/latexmk.pdf) for more information.
