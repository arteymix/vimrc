set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" solarized
syntax enable
colorscheme solarized
set background=dark

" toggle background
call togglebg#map("<F5>")

" line at 80 characters
" set textwidth=80
let &colorcolumn=join(range(81,999),",")

set nowrap
