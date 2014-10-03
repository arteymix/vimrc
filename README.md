vimrc
=====
My personal vimrc file including

* dark and light solarized color scheme
* syntax highlight for Vala, Markdown, Twig and MIPS
* [pathogen](https://github.com/tpope/vim-pathogen)

I mainly use it under the GNOME Terminal.

Have fun hacking it ;)

Installation
------------
Clone the repository directly in your home directory
```bash
git clone https://github.com/arteymix/vimrc.git .vim
cd .vim
git submodule update --init --recursive
```

Remember to compile vimproc
```bash
cd bundle/vimproc; make
```

Pull often
```
git pull
git submodule update --init --recursive
cd bundle/vimproc; make
```
