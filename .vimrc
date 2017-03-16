"Activate line numbers
:set number
"Color scheme
syntax on
colorscheme PaperColor 
set cursorline
set cursorcolumn
set mouse=a

"Plugins
call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'elixir-lang/vim-elixir'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'letientai299/vim-react-snippets', { 'branch': 'es6' }
call plug#end()

"NerdTree
let g:NERDTreeWinSize=22

" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"set mapleader
let mapleader = "\<Space>"

"map leader stuff
nnoremap <Leader>s :w<CR>
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>o :NERDTreeToggle<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>t :!mix test<CR>
map <Leader>n :bnext<CR>
map <Leader>b :bprev<CR>
map <Leader>c :Bclose<CR>

"powerline
let g:airline_powerline_fonts = 1
set ttimeoutlen=50
set laststatus=2
let g:airline_theme='light'

"jsx
let g:jsx_ext_required = 0

autocmd VimEnter * NERDTree
