" coding
set shiftwidth=4  " 4 spaces for indenting
set tabstop=4     " 4 spaces shown per tab
set softtabstop=4 " 4 spaces for inserted tab
set expandtab     " expand tab to spaces
set autoindent    " autoindent when appliable
set smartindent   " smart indentation
set showmatch     " highlight matching parenthesis, brace, ...
set nowrap        " do not break long lines
set backspace=2   " backspace in insert mode

" completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,mkd setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" style
syntax on
set number              " show line numbers
set term=xterm-256color " fix for color set
set background=dark     " dark by default, switch with F5
set cursorline          " highlight current
if v:version >= 703
    let &colorcolumn=join(range(81,200),",") " different background past 80 characters
endif

" misc & performance
set lazyredraw " redraw when necessary

" key mapping
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"

" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim

let g:pathogen_disabled=[]

" neocomplete requires vim to be compiled with lua
if !has('lua')
    call add(g:pathogen_disabled, 'neocomplete')
endif

execute pathogen#infect()

" neocomplete
if has('lua')
    let g:acp_enableAtStartup=0
    let g:neocomplete#enable_at_startup=1
    let g:neocomplete#enable_smart_case=1
endif

" phpcomplete
let g:phpcomplete_index_composer_command="composer"

" solarized
colorscheme solarized     " enable solarized theme
call togglebg#map("<F5>") " switch solarized background

" airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
set laststatus=2

" gutter
highlight SignColumn ctermbg=black
