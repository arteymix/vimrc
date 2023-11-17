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
Plug 'vim-pandoc/vim-pandoc'
-- This plugin is currently broken (see https://github.com/vim-pandoc/vim-pandoc-syntax/issues/386 for details)
-- Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-scripts/brainfuck-syntax'
Plug 'vim-scripts/loremipsum'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/vim-gradle'
Plug 'w0rp/ale'

vim.call("plug#end")

vim.api.nvim_create_autocmd({'BufEnter'}, {
    pattern = {'*'},
    command = 'call ncm2#enable_for_buffer()'
})
vim.cmd("set completeopt=noinsert,menuone,noselect")

-- coding
vim.g.autodindent=true
vim.g.mouse=''
vim.g.showmatch=true          -- highlight matching parenthesis, brace, ...
vim.g.number=true             -- show line numbers
vim.g.relativenumber=true
vim.g.wrap=false              -- breaks long lines based on textwidth
vim.g.cursorline=true         -- highlight current line
vim.g.breakindent=true        -- preserve indentation when breaking long lines
vim.g.list=true               -- show invisible characters
vim.g.splitbelow=true
vim.g.splitright=true
vim.cmd("set cinoptions=(0")
vim.cmd("set cinkeys-=0#")
-- vim.cmd("set smarttab")
vim.g.spell=true
vim.g.incommand='nosplit'
vim.g.wildmenu=true

-- style
vim.cmd.colorscheme("gruvbox")
vim.g.background='dark'
vim.cmd.highlight({"Normal", "ctermbg=none"})
vim.cmd.highlight({"NonText", "ctermbg=none"})

-- misc & performance
vim.g.autoread=true
vim.g.foldenable=false -- fold initially opened

vim.cmd("let mapleader = \"\\<space>\"")

-- splits navigation
vim.keymap.set("n", "<leader>s", ":split<return>")
vim.keymap.set("n", "<leader>vs", ":vsplit<return>")
vim.keymap.set("n", "<leader>h", "<C-W><C-H>")
vim.keymap.set("n", "<leader>j", "<C-W><C-J>")
vim.keymap.set("n", "<leader>k", "<C-W><C-K>")
vim.keymap.set("n", "<leader>l", "<C-W><C-L>")

vim.keymap.set("n", "<leader>b", ":b<space>")
vim.keymap.set("n", "<leader>bn", ":bnext<return>")
vim.keymap.set("n", "<leader>bp", ":bprevious<return>")
vim.keymap.set("n", "<leader>bd", ":bdelete<return>")

-- yank & paste from system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")

-- shortcuts
vim.keymap.set("n", "<leader>w",":w<return>")
vim.keymap.set("n", "<leader>wq",":wq<return>")
vim.keymap.set("n", "<leader>q",":q<return>")
vim.keymap.set("n", "<leader>m",":make<return>")
vim.keymap.set("n", "<leader>t",":make test<return>")
vim.keymap.set("n", "<leader>c",":make clean<return>")
vim.keymap.set("n", "<leader>pt", ":Pandoc tex<return>")
vim.keymap.set("n", "<leader>pb", ":Pandoc beamer --pdf-engine xelatex<return>")
vim.keymap.set("n", "<leader>pp", ":Pandoc pdf<return>")
vim.keymap.set("n", "<leader>pl", ":Pandoc --template=letter pdf<return>")

-- terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- file detection
vim.cmd("autocmd BufNewFile,BufRead wscript* set filetype=python")
vim.cmd("autocmd BufNewFile,BufRead *.cl set filetype=c")

-- EasyAlign interactive mode
vim.keymap.set("v", "<Enter>", "<Plug>(EasyAlign)")
vim.keymap.set("n", "ga", "<Plug>(EasyAlign)")

-- this plugin remaps a bunch of keys starting by '<leader>h' which interferes
-- with split navigation
vim.g['gitgutter_map_keys'] = false
vim.g['airline_powerline_fonts'] = true
vim.g['airline#extensions#tabline#enabled'] = true
vim.g['pandoc#syntax#codeblocks#embeds#langs'] = {'java', 'python', 'vala'}
vim.g['loaded_ruby_provider'] = 0
vim.g['loaded_node_provider'] = 0
vim.g['loaded_perl_provider'] = 0
