set encoding=utf-8
scriptencoding utf-8

let mapleader = "\<Space>"

" ==================== PLUGINS

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

" auto complete, prettier, buffer/file management
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

filetype plugin on

" ====================


colorscheme nord
        let g:nord_uniform_status_lines = 1
        let g:nord_comment_brightness = 20

" Show existing tabs with 4 spaces width
set tabstop=4

" 4 spaces as tabs
set expandtab
set number

set clipboard+=unnamedplus


" ==================== MAPPINGS
" coc.nvim mappings
nmap <silent> <leader>df <Plug>(coc-definition)
nmap <silent> <leader>dr <Plug>(coc-references)
nmap <silent> <leader>dv <Plug>(coc-implementation)
nmap <leader>F :CocCommand prettier.formatFile<CR>

" coc-lists
nnoremap <silent> <leader>f :CocList files<CR>
nnoremap <silent> <leader>b :CocList buffers<CR>
nnoremap <silent> <leader>g :CocList grep<CR>
nnoremap <silent> <leader>j :exe 'CocList -A --normal --input='.expand('<cword>').' grep'<CR>
nnoremap <silent> <leader>w :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>

" other
" switch to previous file
nnoremap <leader><leader> <C-^>
" ====================
