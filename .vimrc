set incsearch
set ignorecase

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number
set nowrap
set ruler
set hlsearch
set incsearch

set showmatch

filetype plugin on

xnoremap p pgvy

" Taglist
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
"let Tlist_File_Fold_Auto_Close = 1
"let Tlist_Use_SingleClick = 1

let mapleader = ","
map <leader>tt :TlistToggle<cr>
map <leader>ta :TlistAddFiles
map <leader>tar :TlistAddFilesRecursive
map <leader>tp :TlistShowPrototype

hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white

set ffs=unix,dos,mac

source ~/.vim/.dracula.vim
