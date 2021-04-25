
set nocompatible
call plug#begin()
  Plug 'Luxed/ayu-vim'
"  Plug 'dracula/vim', { 'as': 'dracula' }  
  Plug 'arcticicestudio/nord-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'preservim/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'ryanoasis/vim-devicons'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Yggdroot/indentLine'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'maxmellon/vim-jsx-pretty'
call plug#end()
set encoding=UTF-8
set termguicolors
set background=dark
set tabstop=4
set shiftwidth=4
set expandtab
set number
set rnu
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set showmatch
set sw=2
set noshowmode
set laststatus=2
set mouse=a


let g:ayucolor="dark"
" colorscheme ayu
" colorscheme dracula
colorscheme nord
" ERDTree {{
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = '🞂'
let g:NERDTreeDirArrowCollapsible = '▼'
"}}N

" IndentLine {{
let g:indentLine_char = '⁞'
let g:indentLine_first_char = '⁞'
" }}




nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> <C-p> :Files<CR>
