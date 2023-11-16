local Plug = vim.fn['plug#']

vim.call("plug#begin", '~/.config/nvim/bundle')

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
vim.cmd("Plug 'ncm2/ncm2' | Plug 'roxma/nvim-yarp'")
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-cssomni'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-markdown-subscope'
Plug 'ncm2/ncm2-path'
vim.cmd("Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'")
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
-- vim.cmd("Plug 'vim-pandoc/vim-pandoc-syntax'")
Plug 'vim-scripts/brainfuck-syntax'
Plug 'vim-scripts/loremipsum'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/vim-gradle'
Plug 'w0rp/ale'

vim.cmd("autocmd BufEnter * call ncm2#enable_for_buffer()")

vim.call("plug#end")

vim.cmd("autocmd BufEnter * call ncm2#enable_for_buffer()")
vim.cmd("set completeopt=noinsert,menuone,noselect")

-- coding
vim.cmd("set autoindent")
vim.cmd("set mouse=")
vim.cmd("set showmatch")      -- highlight matching parenthesis, brace, ...
vim.cmd("set number")         -- show line numbers
vim.cmd("set relativenumber")
vim.cmd("set nowrap")         -- breaks long lines based on textwidth
vim.cmd("set cursorline")     -- highlight current line
vim.cmd("set breakindent")    -- preserve indentation when breaking long lines
vim.cmd("set list")           -- show invisible characters
vim.cmd("set splitbelow")
vim.cmd("set splitright")
vim.cmd("set cinoptions=(0")
vim.cmd("set cinkeys-=0#")
-- vim.cmd("set smarttab")
vim.cmd("set spell")
vim.cmd("set inccommand=nosplit")
vim.cmd("set wildmenu")

-- style
vim.cmd("colorscheme gruvbox")
vim.cmd("set background=dark")
vim.cmd("highlight Normal ctermbg=none")
vim.cmd("highlight NonText ctermbg=none")

-- misc & performance
vim.cmd("set autoread")
vim.cmd("set nofoldenable") -- fold initially opened

vim.cmd("let mapleader = \"\\<space>\"")

-- splits navigation
vim.cmd("nnoremap <leader>s :split<return>")
vim.cmd("nnoremap <leader>vs :vsplit<return>")
vim.cmd("nnoremap <leader>h <C-W><C-H>")
vim.cmd("nnoremap <leader>j <C-W><C-J>")
vim.cmd("nnoremap <leader>k <C-W><C-K>")
vim.cmd("nnoremap <leader>l <C-W><C-L>")

vim.cmd("nnoremap <leader>b :b<space>")
vim.cmd("nnoremap <leader>bn :bnext<return>")
vim.cmd("nnoremap <leader>bp :bprevious<return>")
vim.cmd("nnoremap <leader>bd :bdelete<return>")

-- yank & paste from system clipboard
vim.cmd("nnoremap  <leader>y \"+y")
vim.cmd("nnoremap  <leader>p \"+p")

-- shortcuts
vim.cmd("nnoremap <leader>w :w<return>")
vim.cmd("nnoremap <leader>wq :wq<return>")
vim.cmd("nnoremap <leader>q :q<return>")
vim.cmd("nnoremap <leader>m :make<return>")
vim.cmd("nnoremap <leader>t :make test<return>")
vim.cmd("nnoremap <leader>c :make clean<return>")
vim.cmd("nnoremap <leader>pt :Pandoc tex<return>")
vim.cmd("nnoremap <leader>pb :Pandoc beamer --pdf-engine xelatex<return>")
vim.cmd("nnoremap <leader>pp :Pandoc pdf<return>")
vim.cmd("nnoremap <leader>pl :Pandoc --template=letter pdf<return>")

-- terminal mode
vim.cmd("tnoremap <Esc> <C-\\><C-n>")

-- file detection
vim.cmd("autocmd BufNewFile,BufRead wscript* set filetype=python")
vim.cmd("autocmd BufNewFile,BufRead *.cl set filetype=c")

-- EasyAlign interactive mode
vim.cmd("vmap <Enter> <Plug>(EasyAlign)")
vim.cmd("nmap ga <Plug>(EasyAlign)\"")

-- this plugin remaps a bunch of keys starting by '<leader>h' which interferes
-- with split navigation
vim.cmd("let g:gitgutter_map_keys=0")
vim.cmd("let g:airline#extensions#tabline#enabled=1")
vim.cmd("let g:pandoc#syntax#codeblocks#embeds#langs=['java', 'python', 'vala']")
