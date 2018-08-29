" Functions part

"Plugin manager made by https://github.com/MarcWeber/vim-addon-manager
        fun SetupVAM()
          set runtimepath+=~/vim-addons/vim-addon-manager
          " commenting try .. endtry because trace is lost if you use it.
          " There should be no exception anyway
          " try

          " Scala addons
            call vam#ActivateAddons(['vim-addon-scala','vim-addon-sbt'],{'auto_install' : 1})
          " Graphical addons
            call vam#ActivateAddons(['changeColorScheme','Solarized','CSApprox'],{'auto_install' : 1})
          " Tools addons - Supertab removed (conflict with vimsnippet trigger
          " button
            call vam#ActivateAddons(['snipMate','tagbar','nerdtree','syntastic'],{'auto_install' : 1})

            " pluginA could be github:YourName see vam#install#RewriteName()
          " catch /.*/
          "  echoe v:exception
          " endtry
        endf
        call SetupVAM()
        " experimental: run after gui has been started (gvim) [3]
        " option1:  au VimEnter * call SetupVAM()
        " option2:  au GUIEnter * call SetupVAM()
        " See BUGS sections below [*]
" End of functions part

set autoindent
set ruler
set linebreak " satirlari harflerle degil kelimelerle boler

" Move anywhere !
set virtualedit=all

set nowrap

set backspace=indent,eol,start

syntax on
syntax enable

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
filetype indent on

set grepprg=grep\ -nH\ $*

" searching
set incsearch                 " incremental search
set smartcase                 " ignore case if search pattern is all lowercase, case-sensitive otherwise
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync

set softtabstop=4
set shiftwidth=4
set scrolloff=5               " keep at least 5 lines above/below

" Necessary  for lots of cool vim things
set nocompatible

"folding settings
augroup vimrc
  au BufReadPre * setlocal foldmethod=marker
  au BufWinEnter * if &fdm == 'marker' | setlocal foldmethod=manual | endif
augroup END
set foldnestmax=3       "deepest fold is 3 levels
"set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

"display tabs and trailing spaces
set list
set listchars=tab:➢·,trail:·,nbsp:·

" A utiliser en live, paste désactive l'indentation automatique (entre autre) et nopaste le contraire
set nopaste

set formatoptions-=o "dont continue comments when pushing o/O

" Show command
set showcmd    "Show command as you type
set showmode   "Show current mode
set number     "Show line number

" line numbers
set number

" Who doesn't like autoindent?
set autoindent
set copyindent                 " copy the last indentation with 'autoindent'
set shiftwidth=4               " number of spaces used with 'autoindent'
set shiftround                 " use multiple of shiftwidth when indenting with '<' and '>'

" Spaces are better than a tab character
set expandtab
set smarttab

" Enable mouse support in console
set mouse=a

" Favorite Color Scheme
if has("gui_running")
   " Remove Toolbar
   set guioptions-=T
   set cul
   hi CursorLine term=none cterm=none ctermbg=3
endif

" Built-in auto complete
set ofu=syntaxcomplete#Complete

" Colorscheme
" colorscheme wombat
let g:solarized_termcolors=256
" colorscheme zenburn
let g:zenburn_high_Contrast=1
colors zenburn

" dark background
set background=dark

" Spelling
"set spell spelllang=en_gb
"set spell spelllang=fr

""""""""""""
" BINDINGS "
""""""""""""

" Stay at middle of the screen
" map j jzz
" map k kzz

" Change Color Scheme
nnoremap <silent> <C-F9>  :colorscheme wombat256mod<CR>
nnoremap <silent> <C-F10> :colorscheme zenburn<CR>
nnoremap <silent> <C-F11> :set background=dark<CR>:colorscheme solarized<CR>
nnoremap <silent> <C-F12> :call RandomColorScheme()<CR>

" remap <Leader>
let mapleader=","

" automatically leave insert mode after 'updatetime' milliseconds of inaction
au CursorHoldI * stopinsert
" set 'updatetime' to 15 seconds when in insert mode
au InsertEnter * let updaterestore=&updatetime | set updatetime=15000
au InsertLeave * let &updatetime=updaterestore

" Open the tagbar Plugin <F3>
nnoremap <silent> <F3> :TagbarToggle<CR>

" Open the NERDTree Plugin <F4>
nnoremap <silent> <F4> :NERDTreeToggle<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>

set nobackup

" User Properties

" Settings
" tagbar
let g:tagbar_left = 1
let g:tagbar_autofocus = 1

" Syntastic
" no signs
let g:syntastic_enable_signs = 1
" Close automatically when no more errors
let g:syntastic_auto_loc_list = 0

let g:snips_author = "MACHIZAUD Andréa"
