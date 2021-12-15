#!/bin/sh

# Quit
alias q='cd ..'
alias qq='cd ../..'
alias qqq='cd ../../..'
alias qqqq='cd ../../../..'
alias qqqqq='cd ../../../../..'
alias qqqqqq='cd ../../../../../..'

DOT=$(realpath ..)

# Touch
alias shtouch="cp $DOT/templates/tmpl.sh"
alias pytouch="cp $DOT/templates/tmpl.py"
alias ctouch="cp $DOT/templates/tmpl.cpp"

unset DOT
