syntax on
call plug#begin('~/.vim/plugged')

    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'scrooloose/syntastic'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'flazz/vim-colorschemes'
    Plug 'ervandew/supertab'
    Plug 'SirVer/ultisnips'
    Plug 'heavenshell/vim-jsdoc'
    Plug 'jiangmiao/auto-pairs'
    Plug 'pangloss/vim-javascript'
    Plug 'tpope/vim-fugitive'
    Plug 'Yggdroot/indentLine'
    Plug 'metakirby5/codi.vim'

" Initialize plugin system
call plug#end()
colorscheme Tomorrow-Night-Eighties

set term=screen-256color
set pastetoggle=<F2>
set hidden
set nowrap
set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set number
set backspace=indent,eol,start
set autoindent
set copyindent
set shiftwidth=4
set shiftround
set ignorecase
set smartcase
set hlsearch
set incsearch
set confirm
set encoding=utf-8
set fileencoding=utf-8

" Airline
let g:airline_theme = 'solarized'
let g:airline_solarized_bg = 'dark'
let g:airline#extensions#tabline#enabled = 1
let g:powerline_pycmd = "py3"
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

" Syntactic settings.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_loc_list_height=5
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['jshint']

" Syntastic configuration for PHP
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_phpcs_exec = './.config/composer/vendor/bin/phpcs'
let g:syntastic_php_phpcs_args = '--standard=psr2'
let g:syntastic_php_phpmd_exec = './.config/composer/vendor/bin/phpmd'
let g:syntastic_php_phpmd_post_args = 'cleancode,codesize,controversial,design,unusedcode'

let g:indentLine_enabled = 1 
let g:indentLine_leadingSpaceEnabled = 1

let g:AutoPairsShortcutFastWrap=''
map <C-n> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
