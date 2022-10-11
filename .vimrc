set nocompatible
filetype off
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" Download plug-ins to the ~/.vim/plugged/ directory
call vundle#begin('~/.vim/plugged')
" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

set nu		" Enable Line numbers
syntax on	" Enable syntax highlighting
set relativenumber      " Enable relative numbers
" How many columns of whitespace a \t is worth
set tabstop=4

" How many columns of whitespace a 'level of indentation' is worth
set shiftwidth=4

" Use spaces when tabbing
set expandtab

" Terminal part
set termwinsize=12x0	" Set terminal size
set splitbelow		    " Always split below
set mouse=a		        " Enable mouse drag on window splits


" Lanuage Packs for Syntax Highlighting
Plugin 'sheerun/vim-polyglot'

" Color schemes package here
Plugin 'AlessandroYorba/Alduin'
Plugin 'kristijanhusak/vim-hybrid-material'
set background=dark
let g:enable_italic_font = 1
colorscheme hybrid_material

" Pair Completion
Plugin 'jiangmiao/auto-pairs'
let g:AutoPairsShortcutToggle = '<C-P>'

" File system explorer (tree)
Plugin 'preservim/nerdtree'

let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = 'left'     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns
" F2 short-cut
nmap <F9> :NERDTree<CR>

"Source File Outliner
Plugin 'preservim/tagbar'
let g:tagbar_autofocus = 1                  " Focus the panel when opening it
let g:tagbar_autoshowtag = 1                " Highlight the active tag
let g:tagbar_position = 'botright vertical' " Make panel vertical and place on the right
" F8 short-cut
nmap <F8> :TagbarToggle<CR>

" IndentLine
Plugin 'Yggdroot/indentLine'
let g:indentLine_char = '¦'

" Autocompletion for python
Plugin 'davidhalter/jedi-vim'
let g:jedi#popup_select_first=0

" TAB to completion
Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-n>"

" Flake8 syntax check
Plugin 'nvie/vim-flake8'
autocmd FileType python map <buffer> <F10> :call flake8#Flake8()<CR>

" Python running
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>


" Debugging
Plugin 'puremourning/vimspector'

" CLIPBOARD
if $TUMX == ''
    set clipboard+=unmaed
endif
