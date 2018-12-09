set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
"    status/tabline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"    Git wrapper
Plugin 'tpope/vim-fugitive'
"    NERDTree
Plugin 'scrooloose/nerdtree'

Plugin 'tpope/vim-surround'
Bundle 'gabrielelana/vim-markdown'
Plugin 'mikewest/vimroom'
" ===========================
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" ==== Lorenzo ====
:set wrap linebreak nolist
:set spelllang=es

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal g'\"" |
      \ endif

" sw -> espacios de la indentacion
set sw=4

" tabulacion
set tabstop=4
set smarttab

" Reemplazar tabs con espacios
"set expandtab

" ignore case en las busquedas
set ic

" highlight search, incsearch
set hls is

" Mostrar siempre la linea actual
set ruler

" Coloreado
syntax on

" Lineas
"set number

"Sin beep ni aviso visual
"set vb t_vb=

"Sin beep
"set vb

" Configuración del explorador de ficheros (":Explore")
"""""""""""""""""""""
" Al abrir un fichero, hacerlo en la ventana actual
let g:netrw_browse_split=0

" Activar la ocultacion de ficheros
let g:netrw_hide=1

" Lista de ficheros a ocultar (separar por comas)
let g:netrw_list_hide='^\..*'

" Modo de lista larga (con detalles)
let g:netrw_longlist=1

" Ordenar por "name", "time", o "size"
let g:netrw_sort_by="name"

" Orden "normal" o "reverse"
let g:netrw_sort_direction="normal"
""""""""""""""""""

" Mostrar siempre la barra de tabs
set stal=2

" Remapeo de comandos
nmap :W :w
nmap :Q :q
nmap :WQ :wq

" tab navigation
:nmap <C-p> :tabprevious<cr>
:nmap <C-n> :tabnext<cr>
:nmap <C-t> :tabnew<cr>
:map <C-c> :tabclose<cr>

" No guardar fichero de backup *~
set nobackup

" NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
