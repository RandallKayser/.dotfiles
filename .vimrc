if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

inoremap jk <Esc>

set tabstop=3
set shiftwidth=3
set expandtab
set number
syntax enable
:colorscheme darkluma
