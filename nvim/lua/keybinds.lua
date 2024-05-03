--[[------------------------------ TABS ----------------------------------]]

vim.cmd([[
	set tabstop=3
	set softtabstop=0
	set expandtab
	set shiftwidth=3
	set smarttab
	set number
	set autoindent
]])

--[[-------------------- COLORSCHEME + AESTHETICS -------------------------]]
vim.cmd("syntax enable")

--[[----------------------------- REMAPS ----------------------------------]]
vim.cmd([[
   inoremap jk <Esc>
   vnoremap jk <Esc>
   nnoremap tw :w <bar> :execute "silent !texrefresh %" <bar> redraw!
]])
--[[------------------------------ MISC --------------------------]]

vim.cmd("set clipboard=unnamedplus")

