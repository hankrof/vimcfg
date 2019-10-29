set nu
set ai
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set incsearch
let _curfile = expand("%:t")
if _curfile =~ ".*\.cpp" || _curfile =~ ".*\.c" || _curfile =~ ".*\.mk" || _curfile =~ ".*\.h"
    inoremap ( ()<Esc>i
    inoremap [ []<Esc>a
    inoremap ' ''<Esc>i
    inoremap " ""<Esc>i
    inoremap , , <Esc>a
    inoremap = <space>=<space><Esc>a
    inoremap {<CR> {<CR>}<Esc>ko
    inoremap {{ {}<Esc>i
    map <silent> <F1> :YcmDiags<CR>
    map <silent> <F2> :YcmCompleter GoTo<CR>
    inoremap <silent> <F3> <Esc><C-w><Up>:hide<Esc>a
    map <silent> <F3> <Esc><C-w><Up>:hide<CR>
    setlocal spell
endif
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.  " Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'Valloric/YouCompleteMe'

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
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"