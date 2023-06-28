call plug#begin()
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'octol/vim-cpp-enhanced-highlight'"
call plug#end()

set background=dark
colorscheme onedark


" NERDTree
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


