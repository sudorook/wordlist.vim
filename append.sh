#! /bin/bash
set -eu

vimspelldir=${HOME}/.vim/spell/

mkdir -p ${vimspelldir}
if [ -f ${vimspelldir}/en.utf-8.add ]; then
  cat spell/en.utf-8.add >> ${vimspelldir}/en.utf-8.add
  sort -u ${vimspelldir}/en.utf-8.add > /tmp/temp-$$.add
  mv /tmp/temp-$$.add ${vimspelldir}/en.utf-8.add
else
  cp spell/en.utf-8.add ${vimspelldir}/en.utf-8.add
fi
