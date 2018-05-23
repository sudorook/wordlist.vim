# wordlist.vim

This is a list of words, predominantly technological or scientific jargon, that
vim's spellchecker will say are misspelled.

To install the wordlist in `${HOME}/.vim/spell/`, run:
```
install.sh
```

If you would rather append the list to one you already use (i.e.,
`${HOME}/vim/spell/en.utf-8.add`), then run:
```
append.sh
```

The script will append the list to your current one and then remove any
duplicate terms.

Run `uninstall.sh` to remove `en.utf-8.add` from `${HOME}/.vim/spell/`.
