vimrc
=====
My personal `.vim` folder including:

 * [editorconfig](http://editorconfig.org/)
 * dark and light [Solarized](http://ethanschoonover.com/solarized) color scheme (toggle with F5)
 * extra syntax highlighting for BNF, Liquid, Markdown, MIPS, OCL, Twig and Vala
 * [pathogen](https://github.com/tpope/vim-pathogen)
 * [vim-airline](https://github.com/bling/vim-airline) for a nice status bar
 * [vim-gitgutter](https://github.com/airblade/vim-gitgutter) to quickly see what has changed
 * [neocomplete](https://github.com/Shougo/neocomplete.vim), if lua is enabled
 * [delimitMate](https://github.com/Raimondi/delimitMate) to close parenthesis automatically
 * [vim-fugitive](https://github.com/tpope/vim-fugitive) for an optimal git integration
 * [nerdtree](https://github.com/scrooloose/nerdtree) to browse files
 * [loremipsum](https://github.com/ldong/vim_loremipsum) because it is always useful
 * [vim-pipe](https://github.com/krisajenkins/vim-pipe) to send your buffer anywhere
 * [rainbow parentheses](https://github.com/kien/rainbow_parentheses.vim) because, who doesn't like rainbows?

It has syntax support for:

 * brainfuck
 * MIPS assembly
 * Markdown
 * Vala
 * OCL

I mainly use it under the
[GNOME Terminal](http://en.wikipedia.org/wiki/GNOME_Terminal).

![Preview with the dark solarized theme.](https://raw.githubusercontent.com/arteymix/vimrc/master/preview.png)

Have fun hacking it ;)

Installation
------------
I like Pathogen, so I assume you are familiar with [git](http://git-scm.com).

1. Clone the repository directly in your home directory
```bash
git clone https://github.com/arteymix/vimrc.git .vim
cd .vim
git submodule update --init --recursive
```

2. Symlink `vimrc` and `editorconfig`
```bash
ln -s .vim/vimrc .vimrc
ln -s .vim/editorconfig .editorconfig
```

3. Bundles requiring compilation is automated through the `Makefile` file:
```bash
cd .vim && make
```

4. Pull often to keep up to date with latest features and fixes:
```bash
git pull
git submodule update --init --recursive
make
```

Something's wrong or missing?
-----------------------------
Open an issue or submit me a pull request!
