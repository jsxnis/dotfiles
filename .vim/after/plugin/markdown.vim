"au FileType,BufFilePre,BufRead,BufNewFile *.md set ft=markdown
"au FileType,BufFilePre,BufRead,BufNewFile * if &ft == 'vimwiki' | set ft=markdown | endif

