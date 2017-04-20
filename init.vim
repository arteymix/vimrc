call plug#begin('~/.config/nvim/bundle')

Plug '20115681/vim-meson'
Plug 'Chiel92/vim-autoformat'
Plug 'EinfachToll/DidYouMean'
Plug 'GrAndSE/genie-script-vim-syntax'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'airblade/vim-gitgutter'
Plug 'arrufat/vala.vim'
Plug 'arteymix/vim-ocl'
Plug 'carlitux/deoplete-ternjs'
Plug 'davidhalter/jedi-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'embear/vim-localvimrc'
Plug 'ervandew/supertab'
Plug 'evidens/vim-twig'
Plug 'groenewege/vim-less'
Plug 'jiangmiao/auto-pairs'
Plug 'johnsyweb/vim-makeshift'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/rainbow_parentheses.vim'
Plug 'krisajenkins/vim-pipe'
Plug 'matchit.zip'
Plug 'morhetz/gruvbox'
Plug 'mustache/vim-mustache-handlebars'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'pangloss/vim-javascript'
Plug 'raimondi/delimitmate'
Plug 'tommcdo/vim-kangaroo'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-latex/vim-latex'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-scripts/brainfuck-syntax'
Plug 'vim-scripts/csv.vim'
Plug 'vim-scripts/loremipsum'
Plug 'vim-scripts/vim-gradle'
Plug 'vim-syntastic/syntastic'
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-jedi'

call plug#end()

" coding
set showmatch   " highlight matching parenthesis, brace, ...
set number      " show line numbers
set relativenumber
set nowrap      " breaks long lines based on textwidth
set cursorline  " highlight current line
set breakindent " preserve indentation when breaking long lines
set list        " show invisible characters
set splitbelow
set splitright
set omnifunc=syntaxcomplete#Complete
set cinoptions=(0

" style
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme gruvbox
set background=dark
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" misc & performance
set nobackup
set noswapfile
set lazyredraw   " redraw when necessary
set nofoldenable " fold initially opened

let mapleader = "\<space>"

" splits navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" shortcuts
nnoremap <leader>w :w<return>
nnoremap <leader>wq :wq<return>
nnoremap <leader>q :q<return>
nnoremap <leader>m :make<return>
nnoremap <leader>t :make test<return>
nnoremap <leader>c :make clean<return>
nnoremap <leader>s :split<return>

" file detection
autocmd BufNewFile,BufRead wscript* set filetype=python
autocmd BufNewFile,BufRead *.cl set filetype=c

" EasyAlign interactive mode
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)"

let g:EditorConfig_max_line_indicator='fill'
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'
let g:deoplete#enable_at_startup=1
let g:deoplete#sources#clang#clang_header='/usr/lib64/clang'
let g:deoplete#sources#clang#libclang_path='/usr/lib64/libclang.so'
let g:localvimrc_ask=0
let g:makeshift_systems={'wscript': './waf build', 'build.ninja': 'ninja-build', 'meson.build': 'ninja-build -C build'}
let g:makeshift_use_pwd_first=1
let g:pandoc#syntax#codeblocks#embeds#langs=['java', 'python', 'vala']
let g:syntastic_php_checkers=['php']
let g:syntastic_vala_modules=['glib-2.0', 'gio-2.0', 'libsoup-2.4']
let g:syntastic_vala_vapidirs=['vapi']
