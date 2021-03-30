#! /bin/bash
set -eu

VIMSPELLDIR=${HOME}/.vim/spell/

mkdir -p "${VIMSPELLDIR}"
if [ -f "${VIMSPELLDIR}/en.utf-8.add" ]; then
  cat "${VIMSPELLDIR}/en.utf-8.add" >> spell/en.utf-8.add
  sort -u spell/en.utf-8.add > /tmp/temp-$$.add
  mv /tmp/temp-$$.add spell/en.utf-8.add
fi
