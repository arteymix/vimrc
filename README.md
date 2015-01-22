vimrc
=====
My personal `.vim` folder and including:

Bundles
-------

 * [editorconfig](http://editorconfig.org/) to setup indentation and wrapping
 * dark and light [Solarized](http://ethanschoonover.com/solarized) color scheme
 * extra syntax highlighting for BNF, Liquid, Markdown, MIPS, OCL, Twig and Vala
 * [pathogen](https://github.com/tpope/vim-pathogen) to manage bundles
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

Extras
------
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

Have fun hacking it ;)

Installation
------------
I like Pathogen and I assume you are familiar with [git](http://git-scm.com)
since this project is hosted on GitHub.

1. Clone the repository directly as your new `.vim` folder:

```bash
git clone --recursive https://github.com/arteymix/vimrc.git ~/.vim
```

2. Symlink `vimrc` and `editorconfig` in your home directory so that they stay
   up-to-date with the newest changes:

```bash
ln -s .vim/vimrc .vimrc
ln -s .vim/editorconfig .editorconfig
```

3. Bundles requiring compilation is automated with a `Makefile`:

```bash
cd ~/.vim && make
```

4. Pull often to keep up to date with latest features and fixes:

```bash
git pull && make
```

Something's wrong or missing?
-----------------------------
Open an issue or submit me a pull request!
