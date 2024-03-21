if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'

call plug#end()


filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

"------------------------------ TABS ------------------------------------------

set tabstop=3
set softtabstop=0
set expandtab
set shiftwidth=3
set smarttab
set number
set autoindent
"--------------------- COLORSCHEME + AESTHETICS ------------------------------

syntax enable
:colorscheme sublimemonokai

"----------------------------- REMAPS ----------------------------------------

inoremap jk <Esc>
vnoremap jk <Esc>
nnoremap tw :w <bar> :execute "silent !texrefresh %" <bar> redraw!
set clipboard=unnamedplus
