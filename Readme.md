VIM Bundle and Configuration
===========================

This is just my personal collection and configuration of VIM plugins. It currenctly has a focus on
Google Go and JavaScript Plugins. There are a lot of different collections out there if you are
looking for an all-in-one solution.

Installation
------------

To use this u need to symlink your `~/.vimrc` to the `.vimrc` in this repository.
After that, you need to install vundle manually. Then you can use the Vundle PluginInstall 
command. For Vundle Usage please read their documentation here:
https://github.com/gmarik/Vundle.vim

```
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Reqirements
-----------

I am also using YouCompleteMe which needs a VIM installation with python support. Make sure you have
compiled vim with python27 flag. I am using macports:

```
$ sudo port install vim +python27
```

After that, YouCompleteMe needs some compiling, so execute their install script:

```
$ ~/.vim/bundle/YouCompleteMe/install.sh
```

Google Go stuff
---------------

As mentioned, this is also a google go specific configuration. The original Go Plugins and some
awesome `gocode` stuff is loaded. In order for tag generation and auto completion to work, you have
to install these tools:

```
$ go get -u github.com/jstemmer/gotags
$ go get -u github.com/nsf/gocode
```

The path of my go vim plugins is: `/opt/local/go/misc/vim`. Make sure this points to your correct
go path!. This is configured in the `golang.vim`

So, forking this and improving it would be the best approach!
