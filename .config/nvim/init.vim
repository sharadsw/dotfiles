set encoding=utf-8
scriptencoding utf-8


" Plugins {{{


" Auto install plug if not found
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config//nvim/autoload/plug.vim --create-dirs
           \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    augroup PLUG
        au!
        autocmd VimEnter * PlugInstall
    augroup END
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'arcticicestudio/nord-vim'

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'
"	let g:deoplete#enable_at_startup = 1

call plug#end()

filetype plugin on


" }}}


colorscheme nord
        let g:nord_uniform_status_lines = 1
        let g:nord_comment_brightness = 12

" Show existing tabs with 4 spaces width
set tabstop=4

" 4 spaces as tabs
set expandtab

set clipboard+=unnamedplus
