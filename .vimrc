"Plugins
call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'elixir-lang/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'slashmili/alchemist.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'letientai299/vim-react-snippets', { 'branch': 'es6' }
Plug 'godlygeek/tabular'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'rhysd/vim-crystal'
Plug 'trotzig/import-js'
Plug 'jparise/vim-graphql'
call plug#end()

"NerdTree
let g:NERDTreeWinSize=25

" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"set mapleader
let mapleader = "\<Space>"

"map leader stuff
nnoremap <Leader>s :w<CR>
nnoremap <Leader>p :FZF<CR>
nnoremap <Leader>h :!rg -n '
nnoremap <Leader>o :NERDTreeToggle<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>t :!mix test<CR>
nnoremap <Leader>f :MixFormat<CR>
nnoremap <Leader>i gg=G``
map <Leader>n :bnext<CR>
map <Leader>b :bprev<CR>
map <Leader>c :Bclose<CR>

"Appending closing characters
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"powerline
let g:airline_powerline_fonts = 1
set ttimeoutlen=50
set laststatus=2
"let g:airline_theme='light'
let g:airline_theme='nord'

"jsx
let g:jsx_ext_required = 0

"Indentation
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"ctrlp
let g:ctrlp_custom_ignore = {
            \ 'dir': 'node_modules\|DS_Store\|git'
            \ }

let $FZF_DEFAULT_COMMAND='ag -g ""'

"Syntastic
"let g:syntastic_elixir_checkers = ['elixir']
"let g:syntastic_enable_elixir_checker = 1
"let g:syntastic_javascript_checkers = ['syntastic-javacript-jsl']
"let g:syntastic_json_checkers = ['syntastic-checkers-json']

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"Persistent undo
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000

"Activate line numbers
:set number
"Color scheme
syntax on
set cursorline
set cursorcolumn
set mouse=a

" Temp files 
:set directory=$HOME/.vim/swapfiles//
:set backupdir=$HOME/.vim/swapfiles//
:set backupcopy=yes

"colorscheme PaperColor 
colorscheme nord
