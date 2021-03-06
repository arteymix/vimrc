# vimrc

My personal `neovim` configuration based on
[Solarized](http://ethanschoonover.com/solarized) and
[EditorConfig](http://editorconfig.org/) and tons of useful bundles.

## Bundles

All budles are managed by [NeoBundle](https://github.com/Shougo/neobundle.vim).

 * [EditorConfig](http://editorconfig.org/) to setup indentation and wrapping
 * dark and light [Solarized](http://ethanschoonover.com/solarized) color scheme
 * extra syntax highlighting for BNF, Liquid, Markdown, MIPS, OCL, Twig and Vala
 * [vim-airline](https://github.com/bling/vim-airline) for a nice status bar
 * [vim-gitgutter](https://github.com/airblade/vim-gitgutter) to quickly see what has changed
 * [neocomplete](https://github.com/Shougo/neocomplete.vim) if lua is enabled
 * [delimitMate](https://github.com/Raimondi/delimitMate) to close parenthesis automatically
 * [vim-fugitive](https://github.com/tpope/vim-fugitive) for an optimal git integration
 * [nerdtree](https://github.com/scrooloose/nerdtree) to browse files
 * [loremipsum](https://github.com/ldong/vim_loremipsum) because it is always useful
 * [vim-pipe](https://github.com/krisajenkins/vim-pipe) to send your buffer anywhere
 * [rainbow parentheses](https://github.com/kien/rainbow_parentheses.vim) because, who doesn't like rainbows?
 * [easy-align](https://github.com/junegunn/vim-easy-align) to align stuff

## Extras

It has syntax support for:

 * Brainfuck
 * MIPS assembly
 * Markdown
 * Vala
 * Liquid, Twig and jinja2
 * OCL (still in progress...)

I mainly use it under the
[GNOME Terminal](http://en.wikipedia.org/wiki/GNOME_Terminal).

![Preview with the dark solarized theme.](https://raw.githubusercontent.com/arteymix/vimrc/master/preview.png)

## Installation

1. Clone the repository directly as your new `~/.config/nvim` folder:

   ```bash
   git clone --recursive https://github.com/arteymix/vimrc.git ~/.config/nvim
   ```

2. Symlink `editorconfig` in your home directory so that they stay up-to-date
   with the newest changes:

   ```bash
   ln -s .config/nvim/editorconfig .editorconfig
    ```

3. Start `nvim`, and launch `:PlugUpdate` to install the missing bundles

4. Pull often :)
