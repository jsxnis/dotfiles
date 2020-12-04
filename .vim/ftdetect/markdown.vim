"au BufRead,BufNewFile *.md set filetype=markdown
"au BufRead,BufNewFile * if &ft == 'vimwiki' | set ft=markdown | endif
