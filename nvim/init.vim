
set nocompatible
call plug#begin()
  Plug 'Luxed/ayu-vim'
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
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'
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

function! s:custom_ayu_colors()
  call ayu#hi('tsProperty','accent','')
  call ayu#hi('tsTag', 'entity', '')
  call ayu#hi('tsInclude', 'keyword', '')
  call ayu#hi('tsConstructor', 'fg','')
  call ayu#hi('TSTagDelimiter', 'entity','')
  call ayu#hi('TSVariableBuiltin', 'entity','')
  call ayu#hi('TSProperty', 'fg','')
endfunction
augroup custom_colors
  autocmd!
autocmd ColorScheme * call s:custom_ayu_colors()
augroup END

colorscheme ayu

function! SynStack ()
    for i1 in synstack(line("."), col("."))
        let i2 = synIDtrans(i1)
        let n1 = synIDattr(i1, "name")
        let n2 = synIDattr(i2, "name")
        echo n1 "->" n2
    endfor
endfunction
map gm :call SynStack()<CR>

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true              -- false will disable the whole extension
  },
}
EOF
