#!/bin/bash

# John Hammond's script for making his OSCP report.  Use in conjunction:
# https://github.com/noraj/OSCP-Exam-Report-Template-Markdown  and 
# https://github.com/Wandmalfarbe/pandoc-latex-template
# I changed out the PDF viewer from evince to atril.


if [ "$#" -ne 2 ]; then
    echo "usage: $0 <input.md> <output.pdf>"
    exit
fi

#if this machine does not have the template in place, put it there!
#if [ ! -e /usr/share/pandoc/data/templates/eisvogel.latex ]
#then
#    sudo cp eisvogel.latex /usr/share/pandoc/data/templates/
#fi

pandoc $1 -o $2 \
--from markdown+yaml_metadata_block+raw_html \
--template eisvogel \
--table-of-contents \
--toc-depth 6 \
--number-sections \
--top-level-division=chapter \
--highlight-style tango

if [ $? -eq 0 ]
then
    atril $2   # <-- kept getting a "server" error from evince, so atril it is.
fi
