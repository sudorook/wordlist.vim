#! /bin/bash
set -eu

VIMSPELLDIR=${HOME}/.vim/spell/
TMP="$(mktemp)"

trap 'rm -f "${TMP}"; exit' INT TERM ERR EXIT

mkdir -p "${VIMSPELLDIR}"
if [ -f "${VIMSPELLDIR}/en.utf-8.add" ]; then
  cat "${VIMSPELLDIR}/en.utf-8.add" > "${TMP}"
  cat "spell/en.utf-8.add" >> "${TMP}"
  sort -u "${TMP}" > "${VIMSPELLDIR}/en.utf-8.add"
else
  cp spell/en.utf-8.add "${VIMSPELLDIR}/en.utf-8.add"
fi
