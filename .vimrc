set nocompatible              " be iMproved
""set rtp+=~/.vim/              " Does not seem to happen automatically in gvim
""set dir=~/.vim/swp


"" Plug: Plugin manager
""call plug#begin('~/.vim/plugged')

" General plugins
""Plug 'ctrlpvim/ctrlp.vim'

" Language specific plugins
""Plug 'neapel/vim-java-bytecode'
""Plug 'neovimhaskell/haskell-vim'
""Plug 'rhysd/vim-clang-format'

""call plug#end()


"" Basic settings
syntax enable
set encoding=utf-8
filetype off
""filetype plugin indent on       " load file type plugins + indentation
set number                      " show line numbers
autocmd FileType c,cc,cpp,h ClangFormatAutoEnable

"" Statusline
set laststatus=2
set statusline+=%F
set statusline+=%=%c
hi StatusLine term=reverse ctermbg=254 cterm=none


"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2
set shiftwidth=2
set expandtab                   " spaces instead of tabs
set backspace=indent,eol,start  " backspace through everything in insert mode


"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter


"" Cursor
set scrolloff=10

""set cursorline
"" hi CursorLine term=reverse cterm=none ctermbg=254

set colorcolumn=100
"" hi ColorColumn term=reverse ctermbg=239


"" Change cursor to caret in insert mode or block caret in normal mode
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


"" File syntax detection
""au BufNewFile,BufRead *.md set filetype=markdown
""au BufNewFile,BufRead *.javap setf java-bytecode
""au BufNewFile,BufRead *.jasmin setf java-bytecode
""au BufNewFile,BufRead *.qss setf css


"" Tab completion in menus
""set completeopt=menuone,menu,longest
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest


"" Whitespace / invisible characters
set listchars=eol:\ ,tab:\⇀\ ,trail:~,extends:>,precedes:<
set list


