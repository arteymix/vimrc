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

" line at 80 characters
set textwidth=80
let &colorcolumn=join(range(81, 9999), ",") " 81,82,83,84,...
