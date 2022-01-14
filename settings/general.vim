syntax on

set nu rnu
set cul
set tgc
set winbl=20 pb=20
set et sta sw=4 sts=4 ts=4
set clipboard=unnamedplus

let mapleader = ","
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

noremap <C-w>+ :resize +5<CR>
noremap <C-w>- :resize -5<CR>
noremap <C-w>< :vertical:resize -5<CR>
noremap <C-w>> :vertical:resize +5<CR>

nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap te :tabedit<Space>
nnoremap tn :tabnew<Space>
nnoremap td :tabclose<CR>
