set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'git://git.wincent.com/command-t.git'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Bundles
Bundle 'croaky/vim-colors-github'
Bundle 'altercation/vim-colors-solarized'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'mileszs/ack.vim'
Bundle 'LaTeX-Box-Team/LaTeX-Box'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdtree'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'vim-scripts/paredit.vim'
Bundle 'derekwyatt/vim-scala'

" Bundle 'w0ng/vim-github-theme'
" Bundle 'Lokaltog/powerline'

"let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_color_change_percent=1


let g:solarized_bold=1
let g:solarized_italic=1
let g:solarized_underline=1

if has('gui_macvim')
    " best code font ever
    set guifont=Source\ Code\ Pro:h12
    set transparency=0

    " color scheme
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
set foldmethod=indent                          " fold based on indents in code
set smartcase
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set termencoding=utf-8
set encoding=utf-8
set history=1000
set undolevels=1000
set laststatus=2                               " always show statusbar. useful when using powerline
filetype indent on

" fast buffer switching
nnoremap <leader>n :bn<CR>

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" code folding shortcuts

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

" compile latex
nmap <Leader>cc :!pdflatex %<CR><CR>
nmap <Leader>co :!pdflatex %<CR><CR> :!open %:r.pdf<CR><CR>

" environment expansions for latex
autocmd BufNewFile,BufRead *.tex :ab bal \begin{align*}<CR><CR>\end{align*}<UP>
autocmd BufNewFile,BufRead *.tex :ab bfig \begin{figure}[htbp]<CR>\centering<CR>\includegraphics[width=4in]{}<CR>\caption{}<CR>\end{figure}
autocmd BufNewFile,BufRead *.tex :ab bdoc \documentclass{article}<CR>\usepackage{le_math}<CR><CR>\begin{document}<CR><CR>\end{document}<UP>

" set foldlevel to open on file load
" Note, perl automatically sets foldmethod in the syntax file
autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=syntax
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zR


" fix Scala stuff
augroup scala
    autocmd!
    autocmd BufNewFile,BufRead *{.scala} :setlocal filetype=scala syntax=scala
augroup END

""""" Duck remap stuff
  " relative line numbers
  noremap <leader>ln  :call ToggleRelativeLineNumbers()<CR>
  function! ToggleRelativeLineNumbers()
    if (&relativenumber == 1)
      set norelativenumber
    else
      set relativenumber
    endif
  endfunction

  " delete surrounding function
  nnoremap <leader>dsf m`F(Bdwxf)x``

  " change directory to that of current file
  noremap <leader>cd  :cd %:p:h<CR>:pwd<CR>

  " clear highlighted search term
" nnoremap <silent> <Esc> :nohlsearch<CR>
" nnoremap <silent> <C-c> :nohlsearch<CR>

" Switching splits
" noremap <C-j> <C-W>j
" noremap <C-k> <C-W>k
" noremap <C-l> <C-W>l
" noremap <C-h> <C-W>h

" noremap <C-Up>    <C-W>k
" noremap <C-Down>  <C-W>j
" noremap <C-Left>  <C-W>h
" noremap <C-Right>  <C-W>l

" " up/down within a single wrapped line
" nnoremap <Up>  gk
" nnoremap <Down> gj
" vnoremap <Up>  gk
" vnoremap <Down> gj
" inoremap <Up>  <C-o>gk
" inoremap <Down> <C-o>gj

" " ALT+(+/-) to resize buffer
" noremap <A-k>  <C-w>+
" noremap <A-j>  <C-w>-
" noremap <A-h>  <C-w><lt>
" noremap <A-l>  <C-w>>


" " move line up/down
" nnoremap  <C-A-j>  :m+<CR>
" nnoremap  <C-A-k>  :m--<CR>


" " quicker scroll up/down
" noremap <C-e> 3<C-e>
" noremap <C-y> 3<C-y>

" " start binding window scrolling together
" noremap <leader>sb  :set scrollbind!<CR>

" " Don't use Shift+direction
" noremap <S-Down>  <Down>
" noremap <S-Up>    <Up>

" " start/end of line in insert mode
" inoremap <C-a>  <C-o>^
" inoremap <C-e>  <C-o>$

" " previous/next word in insert mode
" inoremap <C-f>  <C-o>w
" inoremap <C-b>  <C-o>b

" " alternatives to arrow keys in insert mode (steps on switch split keys)
" " inoremap <C-j>  <Down>
" " inoremap <C-k>  <Up>
" " inoremap <C-h>  <Left>
" " inoremap <C-l>  <Right>

" " Disable help by F1
" noremap <F1> <Nop>
" inoremap <F1> <Nop>

