"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable compatibility mode
set nocp
"Enable buffer
set hidden
" Paste mode
set pastetoggle=<F2>

set nowrap        " don't wrap lines
set backspace=indent,eol,start " allow backspacing over everything in insert mode

"Search gestion
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set incsearch     "show search matches as you type
set hlsearch      ""highlight search terms

"Indentation gestion
set tabstop=4 " a tab is four spaces
set softtabstop=4
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop



"Enable mouse
set mouse=a

" Set to auto read when a file is changed from the outside
set autoread
"sudo after opened
cmap w!! w !sudo tee % >/dev/null
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Map 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" change the mapleader from \ to ,
let mapleader=","
" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
"clear the search buffer with ,/
nmap <silent> ,/ :nohlsearch<CR> 
map <leader>n :new<cr

nmap <silent> <A-Up> <C-W> 
nmap <silent> <A-Down> <C-W> j
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
:map - <C-W>-
:map + <C-W>+
:map <F3> <C-W><C-W>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
execute pathogen#infect()
"call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syn on
"set syntax on
syntax enable
filetype indent plugin on

set background=dark
colorscheme solarized

"highlight shite white spaces
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:. 
"autocmd filetype html,xml,html.twig,twig set listchars-=tab:>. "Disable in some filetypes

set visualbell           " don't beep
set noerrorbells         " don't beep


if has('gui_running')
	set background=light
else
	set background=dark
endif

"Line numbers
set number

"Print line of cursor
set cursorline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coding 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" '(,<,{,[' gestion
set showmatch

"Twig coloration"
au BufRead,BufNewFile *.twig set syntax=htmljinja

"Shortchuts
iab #i #include
iab fct function(){}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
set history=1000  " Sets how many lines of history VIM has to remember
set undolevels=1000 " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title          " change the terminal's title
