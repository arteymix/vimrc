" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim

let g:pathogen_disabled=[]

" neocomplete requires vim to be compiled with lua
if !has('lua')
    call add(g:pathogen_disabled, 'neocomplete')
endif

execute pathogen#infect()

" coding
set autoindent    " autoindent when appliable
set showmatch     " highlight matching parenthesis, brace, ...
set number        " show line numbers
set nowrap        " breaks long lines based on textwidth
set backspace=2   " backspace in insert mode
set laststatus=2  " show statusbar
set cursorline    " highlight current line

" syntax and indentation
syntax on
filetype plugin indent on

" vala indentation sucks ass.. (with closures)
autocmd FileType vala setlocal filetype=javascript syntax=vala

" style
colorscheme solarized   " enable solarized theme
set background=dark     " dark by default, switch with F5

" misc & performance
set lazyredraw " redraw when necessary

" key mapping
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"

" neocomplete
if has('lua')
  let g:acp_enableAtStartup=0
  let g:neocomplete#enable_at_startup=1
  let g:neocomplete#enable_smart_case=1

  " vim-multiple-cursors with neocomplete

  " Called once right before you start selecting multiple cursors
  function! Multiple_cursors_before()
    if exists(':NeoCompleteLock')==2
      exe 'NeoCompleteLock'
    endif
  endfunction

  " Called once only when the multiple selection is canceled (default <Esc>)
  function! Multiple_cursors_after()
    if exists(':NeoCompleteUnlock')==2
      exe 'NeoCompleteUnlock'
    endif
  endfunction
endif

" vim-airline
let g:airline_powerline_fonts=1

" gutter
highlight SignColumn ctermbg=black
