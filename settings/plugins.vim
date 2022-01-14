call plug#begin()
" file navigation
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" code navigation
Plug 'yuttie/comfortable-motion.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'craigemery/vim-autotag'
Plug 'lukas-reineke/indent-blankline.nvim'

" git
Plug 'tpope/vim-fugitive'

" lightline/tabline
Plug 'itchyny/lightline.vim'
Plug 'josa42/vim-lightline-coc'
Plug 'gcmt/taboo.vim'
Plug 'mg979/vim-xtabline'

" terminal
Plug 'voldikss/vim-floaterm'

" autocomplete/lsp
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" utilities
Plug 'Townk/vim-autoclose'
Plug 'dhruvasagar/vim-zoom'
Plug 'tpope/vim-commentary'

" color themes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'doums/darcula'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
call plug#end()
