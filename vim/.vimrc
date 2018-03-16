set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" Bundles
Plugin 'croaky/vim-colors-github'
Plugin 'altercation/vim-colors-solarized'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'mileszs/ack.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'scrooloose/nerdtree'

" Bundle 'Lokaltog/powerline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" non-Plugin stuff after this line

let g:solarized_bold=1
let g:solarized_italic=1
let g:solarized_underline=1

if has('gui_macvim')
    set guifont=Source\ Code\ Pro:h12
    set transparency=0
    colorscheme solarized
    set bg=dark
else
    colorscheme solarized
    set bg=dark
endif

" basic stuff
let mapleader=','                              " set leader to ,
syn on                                         " syntax highlighting
set nu                                         " line numbers
set tabstop=4                                  " size of tab
set softtabstop=4                              " size of spaces-tabs
set shiftwidth=4                               " shift size
set autoindent                                 " indent at same level as previous line
set expandtab                                  " tabs are spaces, not tabs
set backspace=indent,eol,start                 " let's you delete before the starting point in a line
set scrolloff=3                                " minimum lines to keep above/below cursor
set showmatch                                  " show matching brace when highlighting it
set showcmd                                    " show command in last line of screen
set formatoptions=rq
set mouse=a                                    " mouse in terminal vim
set nowrap                                     " text doesn't autowrap
set pastetoggle=<F2>
set clipboard=unnamed                          " vim buffer and system clipboard are shared
set t_Co=256                                   " 256 terminal colors
set nospell                                    " no spellcheck
set hidden                                     " lets you open other buffers without saving the current one
set wildmenu                                   " shows list instead of just autocompleting
set wildignore=*.swp,*.bak,*.pyc
set incsearch                                  " find as you search
set hlsearch                                   " highlight search
set ignorecase                                 " ignore search case
set foldmethod=syntax                          " fold based on code
set smartcase
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set termencoding=utf-8
set encoding=utf-8
set history=1000
set undolevels=1000
set laststatus=2                               " always show statusbar. useful when using powerline
filetype indent on

autocmd Syntax scala,sbt normal zR


" fast buffer switching
nnoremap <leader>n :bn<CR>

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" noh more easily
nnoremap <leader><space> :noh<cr>

" Tabularize
nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
nmap <Leader>a" :Tabularize /"<CR>
vmap <Leader>a" :Tabularize /"<CR>
nmap <Leader>a/ :Tabularize //<CR>
vmap <Leader>a/ :Tabularize //<CR>
nmap <Leader>a[ :Tabularize /[<CR>
vmap <Leader>a[ :Tabularize /[<CR>
nmap <Leader>a] :Tabularize /]<CR>
vmap <Leader>a] :Tabularize /]<CR>
nmap <Leader>a% :Tabularize /%<CR>
vmap <Leader>a% :Tabularize /%<CR>
nmap <Leader>a; :Tabularize /;<CR>
vmap <Leader>a; :Tabularize /;<CR>
nmap <Leader>a$ :Tabularize /$<CR>
vmap <Leader>a$ :Tabularize /$<CR>
nmap <Leader>a( :Tabularize /(<CR>
vmap <Leader>a( :Tabularize /(<CR>

nmap <Leader>t :NERDTree<CR>

" fix Scala stuff
augroup scala
    autocmd!
    autocmd BufNewFile,BufRead *{.scala} :setlocal filetype=scala syntax=scala
augroup END

""""" Duck remap stuff

  " delete surrounding function
  nnoremap <leader>dsf m`F(Bdwxf)x``

  " change directory to that of current file
  noremap <leader>cd  :cd %:p:h<CR>:pwd<CR>
