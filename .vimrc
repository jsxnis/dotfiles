call plug#begin('~/.vim/plugged')
" -------------------------------------------------
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'godlygeek/tabular', {'for': 'markdown'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'stephpy/vim-yaml', {'for': 'yaml'}
Plug 'kovetskiy/vim-bash', {'for': 'sh'}
Plug 'ironcamel/vim-script-runner', {'for': 'sh'}
" -------------------------------------------------
call plug#end()
" Commands to manage Plug:
" ------------------------
" PlugInstall [name ...] [#threads] 	Install plugins
" PlugUpdate [name ...] [#threads] 	Install or update plugins
" PlugClean[!] 	Remove unlisted plugins (bang version will clean without prompt)
" PlugUpgrade 	Upgrade vim-plug itself
" PlugStatus 	Check the status of plugins
" PlugDiff 	Examine changes from the previous update and the pending changes
" PlugSnapshot[!] [output path] 	Generate script for restoring the current snapshot of the plugins
" ==== Lorenzo ====
:set wrap linebreak nolist
:set spelllang=en
:setlocal spelllang=es

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" highlight search, incsearch
set hls is

" Mostrar siempre la linea actual
set ruler

" Coloreado
syntax on

" Lineas
set relativenumber
set nu rnu

" Plegado
set foldmethod=manual
set nofoldenable

" Remap keys
" Not to use arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

colorscheme molokai
