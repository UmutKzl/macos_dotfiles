" Plugins {{{
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'andreasvc/vim-256noir'
call plug#end()
" }}}
" Options {{{
" Lines {{{
set number
set relativenumber
set cursorline
" }}}
" Confirm when quiting {{{
set confirm
" }}}
" Folds {{{
set foldmethod=marker
" }}}
" Mouse {{{
set mouse=a
" }}}
" Clipboard {{{
set clipboard=unnamed,unnamedplus
" }}}
" UI {{{
set background=dark
colorscheme 256_noir
set laststatus=2
let g:airline_theme = 'base16'
let g:airline#extensions#tabline#enabled = 1
" }}}
" Leader Key {{{
let mapleader = " "
" }}}
" }}}
" Keymaps {{{
" fzf.vim {{{
nnoremap <silent> <leader><leader> :Files <CR>
nnoremap <silent> <leader>cs :Colors <CR>
" }}}
" Buffers {{{
nnoremap <silent> H :bprevious <CR>
nnoremap <silent> L :bnext <CR>
nnoremap <silent> JK :bdelete <CR>
" }}}
" coc.nvim {{{
inoremap <expr> <TAB> coc#pum#visible() ? coc#pum#next(1) : coc#refresh()
inoremap <expr> <S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call CocActionAsync('doHover')<CR>
autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>f  <Plug>(coc-format-selected)
xmap <leader>f  <Plug>(coc-format-selected)
command! Format :call CocActionAsync('format')
" }}}
" }}}
