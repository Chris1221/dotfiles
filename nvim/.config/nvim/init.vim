call plug#begin('~/.local/share/nvim/plugged')

Plug 'jalvesaq/Nvim-R'
Plug 'junegunn/goyo.vim' 
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-latex/vim-latex'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'jalvesaq/Nvim-R'
Plug 'gaalcaras/ncm-R'
call plug#end()

let R_source = '~/repos/dotfiles/nvim/tmux_split.vim'

set background=dark

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

map <C-t> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

set fillchars+=stl:\ ,stlnc:\

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

let g:airline_powerline_fonts = 1

set t_Co=256
highlight Normal ctermbg=NONE

map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>  

set mouse=a

colorscheme delek

let tlist_r_settings = 'R;f:Functions;g:GlobalVariables;v:FunctionVariables'

let g:airline_theme='deus'
