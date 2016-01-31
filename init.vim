call plug#begin('~/.config/nvim/bundle')

Plug 'Chiel92/vim-autoformat'
Plug 'Shougo/deoplete.nvim'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'arteymix/vim-ocl'
Plug 'bling/vim-airline'
Plug 'davidhalter/jedi-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'edsono/vim-matchit'
Plug 'evidens/vim-twig'
Plug 'FredKSchott/CoVim'
Plug 'groenewege/vim-less'
Plug 'GrAndSE/genie-script-vim-syntax'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'krisajenkins/vim-pipe'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/syntastic'
Plug 'solarized'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'terryma/vim-multiple-cursors'
Plug 'tkztmk/vim-vala'
Plug 'tommcdo/vim-kangaroo'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-latex/vim-latex'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-scripts/brainfuck-syntax'
Plug 'vim-scripts/csv.vim'
Plug 'vim-scripts/loremipsum'
Plug 'vim-scripts/vim-gradle'
Plug 'kchmck/vim-coffee-script'

call plug#end()

" coding
set showmatch   " highlight matching parenthesis, brace, ...
set number      " show line numbers
set relativenumber
set nowrap      " breaks long lines based on textwidth
set cursorline  " highlight current line
set breakindent " preserve indentation when breaking long lines

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
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:deoplete#enable_at_startup=1
let g:pandoc#syntax#codeblocks#embeds#langs=['java', 'python', 'vala']
let g:solarized_termtrans=1
let g:syntastic_php_checkers=['php']

