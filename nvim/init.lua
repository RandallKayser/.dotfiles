require "options"
require "keybinds"
require "plugins"
--[[---------------------------- PLUGINS -----------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" follow latest release and install jsregexp.
Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'} " Replace <CurrentMajor> by the latest released major (first number of latest release)




filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
--]]
