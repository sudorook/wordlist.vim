#! /bin/bash
set -eu

VIMSPELLDIR=${HOME}/.vim/spell/

mkdir -p "${VIMSPELLDIR}"
if [ -f "${VIMSPELLDIR}/en.utf-8.add" ]; then
  cat spell/en.utf-8.add >> "${VIMSPELLDIR}/en.utf-8.add"
  sort -u "${VIMSPELLDIR}/en.utf-8.add" > /tmp/temp-$$.add
  mv /tmp/temp-$$.add "${VIMSPELLDIR}/en.utf-8.add"
else
  cp spell/en.utf-8.add "${VIMSPELLDIR}/en.utf-8.add"
fi
