call plug#begin('~/.config/nvim/bundle')

Plug 'airblade/vim-gitgutter'
Plug 'Chiel92/vim-autoformat'
Plug 'EinfachToll/DidYouMean'
Plug 'GrAndSE/genie-script-vim-syntax'
Plug 'arrufat/vala.vim'
Plug 'arteymix/vim-ocl'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'evidens/vim-twig'
Plug 'groenewege/vim-less'
Plug 'tmsvg/pear-tree'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kchmck/vim-coffee-script'
Plug 'krisajenkins/vim-pipe'
Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox'
Plug 'mustache/vim-mustache-handlebars'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ncm2/ncm2' | Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-cssomni'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-markdown-subscope'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'
Plug 'ncm2/ncm2-tern'
Plug 'ncm2/ncm2-vim'
Plug 'ncm2/ncm2-vim-lsp'
Plug 'prabirshrestha/vim-lsp'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-latex/vim-latex'
Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-scripts/brainfuck-syntax'
Plug 'vim-scripts/loremipsum'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/vim-gradle'
Plug 'w0rp/ale'

autocmd BufEnter * call ncm2#enable_for_buffer()

call plug#end()

autocmd BufEnter * call ncm2#enable_for_buffer()
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
set nofoldenable " fold initially opened

let mapleader = "\<space>"

" splits navigation
nnoremap <leader>s :split<return>
nnoremap <leader>vs :vsplit<return>
nnoremap <leader>h <C-W><C-H>
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>

nnoremap <leader>b :b<space>
nnoremap <leader>bn :bnext<return>
nnoremap <leader>bp :bprevious<return>
nnoremap <leader>bd :bdelete<return>

" yank & paste from system clipboard
nnoremap  <leader>y "+y
nnoremap  <leader>p "+p

" shortcuts
nnoremap <leader>w :w<return>
nnoremap <leader>wq :wq<return>
nnoremap <leader>q :q<return>
nnoremap <leader>m :make<return>
nnoremap <leader>t :make test<return>
nnoremap <leader>c :make clean<return>
nnoremap <leader>pt :Pandoc tex<return>
nnoremap <leader>pb :Pandoc beamer --pdf-engine xelatex<return>
nnoremap <leader>pp :Pandoc pdf<return>
nnoremap <leader>pl :Pandoc --template=letter pdf<return>

" terminal mode
tnoremap <Esc> <C-\><C-n>

" file detection
autocmd BufNewFile,BufRead wscript* set filetype=python
autocmd BufNewFile,BufRead *.cl set filetype=c

" EasyAlign interactive mode
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)"

" this plugin remaps a bunch of keys starting by '<leader>h' which interferes
" with split navigation
let g:gitgutter_map_keys=0
let g:airline#extensions#tabline#enabled=1
let g:pandoc#syntax#codeblocks#embeds#langs=['java', 'python', 'vala']
