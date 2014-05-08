set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" solarized
syntax enable
set background=dark
colorscheme solarized
