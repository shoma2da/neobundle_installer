#!/bin/sh
echo "start fetch NeoBundle..."
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
echo "done."

echo "start write NeoBundle initial setting to ~/.vimrc ..."
{
    echo ""
    echo ""
    echo "\"NeoBundle Scripts-----------------------------"
    echo "if has('vim_starting')"
    echo "  set nocompatible               \" Be iMproved"
    echo ""
    echo "  \" Required:"
    echo "  set runtimepath+=~/.vim/bundle/neobundle.vim/"
    echo "endif"
    echo ""
    echo "\" Required:"
    echo "call neobundle#rc(expand('~/.vim/bundle/'))"
    echo ""
    echo "\" Let NeoBundle manage NeoBundle"
    echo "\" Required:"
    echo "NeoBundleFetch 'Shougo/neobundle.vim'"
    echo ""
    echo "\" My Bundles here:"
    echo "\" (Sample is) NeoBundle 'Shougo/neosnippet.vim'"
    echo ""
    echo "\" Required:"
    echo "filetype plugin indent on"
    echo ""
    echo "\" If there are uninstalled bundles found on startup,"
    echo "\" this will conveniently prompt you to install them."
    echo "NeoBundleCheck"
    echo "\"End NeoBundle Scripts-------------------------"
    echo ""
    echo ""
} >> ~/.vimrc
echo "done."

echo "complete setup NeoBundle!"
echo "open NeoBundle github page. enjoy!!"
open https://github.com/Shougo/neobundle.vim
