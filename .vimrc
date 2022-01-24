set tabstop=2
set expandtab
set shiftwidth=2
set number
set title
set showmatch
set cursorline

" search setting
set ignorecase
set smartcase
set wrapscan
set hlsearch
set autoindent

" persistent undo setting
if has("persistent_undo")
  set undodir=~/.vim
  set undofile
endif
