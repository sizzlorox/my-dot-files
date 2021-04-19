" Settings
let g:airline_theme='minimalist'
let g:vimspector_enable_mappings = 'HUMAN'
let g:airline_powerline_fonts = 1
let g:indentline_setColors = 0
let g:indentline_color_term = 239
let g:indentline_bgcolor_term = 202
let g:blamer_enabled = 1

:set number relativenumber
:set guifont=FiraCode\ Nerd\ Font\ 12

set tabstop=2     " (ts) width (in spaces) that a <tab> is displayed as
set expandtab     " (et) expand tabs to spaces (use :retab to redo entire file)
set shiftwidth=2  " (sw) width (in spaces) used in each step of autoindent (aswell as << and >>)

set encoding=UTF-8

" Relative Numbers
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" autocmd
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" MAPS
nnoremap <silent> <C-P> :Files<CR>
nnoremap <silent> <C-B> :NERDTreeToggle<CR>
nnoremap <silent> <C-_> :Commentary<CR>

" PLUGINS
call plug#begin("~/.vim/plugged")

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'puremourning/vimspector'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'yggdroot/indentline'
Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/fzf/', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'APZelos/blamer.nvim'
Plug 'ap/vim-css-color'
" Plug 'valloric/youcompleteme'
Plug 'mg979/vim-visual-multi', { 'branch': 'master' }
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug'] }

Plug 'tpope/vim-commentary'

Plug 'ryanoasis/vim-devicons'

call plug#end()

colorscheme dracula

