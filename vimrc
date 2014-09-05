" coding
set shiftwidth=4  " 4 spaces for indenting
set tabstop=4     " 4 spaces for tab
set softtabstop=4 " 4 spaces for inserted tab
set expandtab     " expand tab to spaces
set smartindent   " smart indentation
set nowrap        " do not break long lines

" style
set term=xterm-256color
set background=dark
if v:version >= 730
    let &colorcolumn=join(range(81,200),",") " different background past 80 characters
endif

" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" post-pathogen
colorscheme solarized     " enable solarized theme
call togglebg#map("<F5>") " switch solarized background
let g:SuperTabDefaultCompletionType = "<C-X><C-O>" " use tab to trigger omnicomplete
