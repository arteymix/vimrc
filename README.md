vimrc
=====
My personal vimrc file including

* dark and light [Solarized]() color scheme (toggle with F5)
* extra syntax highlighting for BNF, Liquid, Markdown, MIPS, OCL, Twig and Vala
* [pathogen](https://github.com/tpope/vim-pathogen)
* [vim-airline](https://github.com/bling/vim-airline)
* [neocomplete](https://github.com/Shougo/neocomplete.vim), if lua is enabled
* [vim-autoclose](https://github.com/) to close parenthesis automatically
* [vim-fugitive]() for an optimal git integration
* [nerdtree](https://github.com/scrooloose/nerdtree) to browse files

I mainly use it under the
[GNOME Terminal](http://en.wikipedia.org/wiki/GNOME_Terminal).

![Preview with the dark solarized theme.](https://raw.githubusercontent.com/arteymix/vimrc/master/preview.png)

Have fun hacking it ;)

Installation
------------
Clone the repository directly in your home directory
```bash
git clone https://github.com/arteymix/vimrc.git .vim
cd .vim
git submodule update --init --recursive
```

Bundles requiring compilation is automated through the `Makefile` file:
```bash
make
```

Pull often to keep up to date with latest features and fixes:
```bash
git pull
git submodule update --init --recursive
make
```

Todo
----
List of plugins to bundle and test, eventually...
* [vim-gitter](), git diff (+, -, ~) in the status bar
* [vim-easy-align](), align content
