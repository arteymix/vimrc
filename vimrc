if has('nvim')
  call plug#begin('~/.nvim/bundle')
else
  call plug#begin('~/.vim/bundle')
endif

Plug 'Chiel92/vim-autoformat'
if has('lua')
  Plug 'Shougo/neocomplete.vim'
else
  Plug 'Shougo/neocomplcache.vim'
endif
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'arteymix/vim-ocl'
Plug 'bling/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'edsono/vim-matchit'
Plug 'evidens/vim-twig'
Plug 'FredKSchott/CoVim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kien/rainbow_parentheses.vim'
Plug 'krisajenkins/vim-pipe'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'solarized'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'terryma/vim-multiple-cursors'
Plug 'tkztmk/vim-vala'
Plug 'tommcdo/vim-kangaroo'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-surround'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-scripts/brainfuck-syntax'
Plug 'vim-scripts/csv.vim'
Plug 'vim-scripts/loremipsum'

call plug#end()

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
highlight SignColumn ctermbg=black
highlight Normal ctermbg=none

" misc & performance
set nobackup
set noswapfile
set lazyredraw   " redraw when necessary
set nofoldenable " fold initially opened

" key mapping
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"

" EasyAlign interactive mode
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)"

let g:EditorConfig_max_line_indicator='fill'
let g:acp_enableAtStartup=0
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:pandoc#syntax#codeblocks#embeds#langs=['java', 'python', 'vala']

if has('lua')
  let g:neocomplete#enable_at_startup=1
  let g:neocomplete#enable_smart_case=1
else
  let g:neocomplcache_enable_at_startup=1
  let g:neocomplcache_enable_smart_case=1
endif
