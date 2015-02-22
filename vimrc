set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'arteymix/vim-ocl'
NeoBundle 'bling/vim-airline'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'edsono/vim-matchit'
NeoBundle 'evidens/vim-twig'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'krisajenkins/vim-pipe'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'solarized'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc.vim', {
			\ 'build' : {
			\     'windows' : 'tools\\update-dll-mingw',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make -f make_mac.mak',
			\     'linux' : 'make',
			\     'unix' : 'gmake',
			\    },
			\ }
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'tkztmk/vim-vala'
NeoBundle 'tommcdo/vim-kangaroo'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-liquid'
NeoBundle 'vim-pandoc/vim-pandoc'
NeoBundle 'vim-pandoc/vim-pandoc-syntax'
NeoBundle 'vim-scripts/brainfuck-syntax'
NeoBundle 'vim-scripts/loremipsum'

call neobundle#end()

" coding
set encoding=utf8
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
set nobackup
set noswapfile
set lazyredraw   " redraw when necessary
set nofoldenable " fold initially opened

" key mapping
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"

let g:EditorConfig_max_line_indicator='fill'

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

NeoBundleCheck
