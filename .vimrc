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
set shiftwidth=3
set expandtab
set number

"--------------------- COLORSCHEME + AESTHETICS ------------------------------

syntax enable
:colorscheme darkluma

"----------------------------- REMAPS ----------------------------------------

inoremap jk <Esc>

set clipboard=unnamedplus
