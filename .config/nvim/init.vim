call plug#begin()
	Plug 'Luxed/ayu-vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'preservim/nerdtree'
	Plug 'preservim/nerdcommenter'
	Plug 'ryanoasis/vim-devicons'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()
set encoding=UTF-8
set termguicolors
set background=dark
set tabstop=4
set shiftwidth=4
set expandtab
let g:ayucolor="dark"
colorscheme ayu

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
