call plug#begin('~/.config/nvim/bundle')

Plug '20115681/vim-meson'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Chiel92/vim-autoformat'
Plug 'FredKSchott/CoVim'
Plug 'GrAndSE/genie-script-vim-syntax'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'airblade/vim-gitgutter'
Plug 'arteymix/vim-ocl'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'davidhalter/jedi-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'edsono/vim-matchit'
Plug 'evidens/vim-twig'
Plug 'groenewege/vim-less'
Plug 'jiangmiao/auto-pairs'
Plug 'johnsyweb/vim-makeshift'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/rainbow_parentheses.vim'
Plug 'krisajenkins/vim-pipe'
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript'
Plug 'terryma/vim-multiple-cursors'
Plug 'tkztmk/vim-vala'
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

" style
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme gruvbox
set background=dark

" misc & performance
set nobackup
set noswapfile
set lazyredraw   " redraw when necessary
set nofoldenable " fold initially opened

let mapleader = "\<space>"

" tab navigation in autocomplete
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"

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

" EasyAlign interactive mode
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)"

let g:EditorConfig_max_line_indicator='fill'
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1
let g:deoplete#enable_at_startup=1
let g:pandoc#syntax#codeblocks#embeds#langs=['java', 'python', 'vala']
"let g:syntastic_php_checkers=['php']
let g:makeshift_systems={'wscript': './waf build', 'build.ninja': 'ninja-build', 'meson.build': 'ninja-build -C build'}
let g:makeshift_use_pwd_first=1
