set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nord theme
Plugin 'arcticicestudio/nord-vim'

" NERDTree config
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'

" Auto-pairs
Plugin 'jiangmiao/auto-pairs'

call vundle#end()            " required
filetype plugin indent on    " required

set termguicolors
syntax on
set number
colorscheme nord
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set expandtab
set cursorline
set hlsearch
set incsearch
set omnifunc=syntaxcomplete#Complete
set laststatus=2

"NERDTree settings
map <C-f> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
map ++ <plug>NERDCommenterToggle

"autocmd VimEnter * NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabFree()) | q | endif

let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
\ "Staged"    : "#0EE375",
\ "Modified"  : "#D9BF91",
\ "Rename"    : "#51C9FC",
\ "Untracked" : "#FCE77C",
\ "Unmerged"  : "#FC51E6",
\ "Dirty"     : "#FFBD61",
\ "Clean"     : "#87939A",
\ "Ignored"   : "#808080",
\ }

let g:NERDTreeIgnore = ['^node_modules']

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <Tab> gt
