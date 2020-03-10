set nu
set ai
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set incsearch
set ut=150
nnoremap q: <nop>
nnoremap q/ <nop>
filetype on

augroup C_Setting
    autocmd FileType c source ~/.vim/c.vim
augroup END

augroup CPP_Setting
    autocmd FileType cpp source ~/.vim/cpp.vim
augroup END

augroup Vundle_Setting
    source ~/.vim/vundle.vim
augroup END
