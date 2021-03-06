set nocompatible              " be iMproved, required

" Netrw banner"
""let g:netrw_banner = 0
""let g:netrw_browser_split = 2
""let g:netrw_winsize  = 20
""let g:netrw_liststyle = 1
""map <silent> <F5> <Esc>:Vexplore<CR>
""augroup ProjectDrawer
""    autocmd!
""    autocmd VimEnter * :Vexplore
""augroup END
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
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.  " Plugin 'ascenator/L9', {'name': 'newL9'}
" COC
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" Vim files for the Bitbake tool
Plugin 'kergoth/vim-bitbake'
" Taglist provides the overview of the structure of source code files
Plugin 'taglist.vim'
" Better Whitespace plugin causes all trailing whitespace characters
Plugin 'ntpeters/vim-better-whitespace'
" Gitgutter provides a git diff in vim
Plugin 'airblade/vim-gitgutter'
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

