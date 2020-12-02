#!/bin/bash

if [ "$#" -ne 1 ]; then
   cp /Users/josephhu/.config/nvim/init.vim .
   cp ~/.vimrc .
else
   cp ~/.vimrc .
fi
