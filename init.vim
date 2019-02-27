call plug#begin('~/.config/nvim/bundle')

Plug 'Chiel92/vim-autoformat'
Plug 'EinfachToll/DidYouMean'
Plug 'GrAndSE/genie-script-vim-syntax'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neco-vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim'
Plug 'airblade/vim-gitgutter'
Plug 'arrufat/vala.vim'
Plug 'arteymix/vim-ocl'
Plug 'broadinstitute/vim-wdl'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dag/vim-fish'
Plug 'editorconfig/editorconfig-vim'
Plug 'evidens/vim-twig'
Plug 'groenewege/vim-less'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kchmck/vim-coffee-script'
Plug 'krisajenkins/vim-pipe'
Plug 'majutsushi/tagbar'
Plug 'mesonbuild/meson', {'rtp': 'data/syntax-highlighting/vim'}
Plug 'morhetz/gruvbox'
Plug 'mustache/vim-mustache-handlebars'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-path'
Plug 'pangloss/vim-javascript'
Plug 'raimondi/delimitmate'
Plug 'roxma/nvim-yarp'
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
Plug 'vim-scripts/loremipsum'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/vim-gradle'

autocmd BufEnter * call ncm2#enable_for_buffer()

call plug#end()

set completeopt=noinsert,menuone,noselect

" coding
set autoindent
set showmatch   " highlight matching parenthesis, brace, ...
set number      " show line numbers
set relativenumber
set nowrap      " breaks long lines based on textwidth
set cursorline  " highlight current line
set breakindent " preserve indentation when breaking long lines
set list        " show invisible characters
set splitbelow
set splitright
set cinoptions=(0
set cinkeys-=0#
"set smarttab
set spell
set inccommand=nosplit
set wildmenu

" style
colorscheme gruvbox
set background=dark
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" misc & performance
set autoread
set nobackup
set noswapfile
set nofoldenable " fold initially opened

let mapleader = "\<space>"

" splits navigation
nnoremap <leader>s :split<return>
nnoremap <leader>vs :vsplit<return>
nnoremap <leader>h <C-W><C-H>
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>

" shortcuts
nnoremap <leader>w :w<return>
nnoremap <leader>wq :wq<return>
nnoremap <leader>q :q<return>
nnoremap <leader>m :make<return>
nnoremap <leader>t :make test<return>
nnoremap <leader>c :make clean<return>
nnoremap <leader>pt :Pandoc tex<return>
nnoremap <leader>pb :Pandoc beamer<return>
nnoremap <leader>pp :Pandoc pdf<return>
nnoremap <leader>pl :Pandoc --template=letter pdf<return>

" file detection
autocmd BufNewFile,BufRead wscript* set filetype=python
autocmd BufNewFile,BufRead *.cl set filetype=c

" EasyAlign interactive mode
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)"

let g:LanguageClient_serverCommands = {'c': ['clangd', '-compile-commands-dir=build']}
let g:EditorConfig_max_line_indicator='fill'
let g:airline#extensions#tabline#enabled=1
let g:pandoc#syntax#codeblocks#embeds#langs=['java', 'python', 'vala']
