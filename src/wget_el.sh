#!/bin/bash

cd ~/.emacs.d/emacs
for i in "$@"
do
  echo ${i}.el
  wget http://www.emacswiki.org/cgi-bin/emacs/download/${i}.el
done
cd -
