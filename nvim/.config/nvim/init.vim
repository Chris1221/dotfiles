colorscheme delek
set mouse-=a

let R_in_buffer = 0
let R_tmux_split = 1

set t_Co=256

call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/goyo.vim'
Plug  'junegunn/limelight.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'black'

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'black'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
autocmd! User GoyoEnter GitGutterEnable
autocmd! User GoyoLeave GitGutterDisable
