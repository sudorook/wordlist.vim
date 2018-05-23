#! /bin/bash
set -eu

vimspelldir=${HOME}/.vim/spell/

mkdir -p ${vimspelldir}
cp -f en.utf-8.add ${vimspelldir}/en.utf-8.add
