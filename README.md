vimrc
=====
My personal vimrc file including

* dark and light solarized color scheme (toggle with F5)
* syntax highlight for Vala, Markdown, Twig and MIPS
* [pathogen](https://github.com/tpope/vim-pathogen)
* [vim-airline](https://github.com/bling/vim-airline)
* [neocomplete](https://github.com/Shougo/neocomplete.vim), if lua is enabled
* [vim-autoclose](https://github.com/) to close parenthesis automatically
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
