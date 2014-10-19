" coding
set shiftwidth=4  " 4 spaces for indenting
set tabstop=4     " 4 spaces for tab
set softtabstop=4 " 4 spaces for inserted tab
set expandtab     " expand tab to spaces
set smartindent   " smart indentation
set nowrap        " do not break long lines
set number        " show line numbers

" style
set term=xterm-256color
set background=dark
if v:version >= 703
    let &colorcolumn=join(range(81,200),",") " different background past 80 characters
endif

" completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" syntax coloring
syntax on

" neocomplete
let g:acp_enableAtStartup=0
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_smart_case=1

" phpcomplete

let g:phpcomplete_index_composer_command="composer"

" post-pathogen
colorscheme solarized     " enable solarized theme
call togglebg#map("<F5>") " switch solarized background
