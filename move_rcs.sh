#!/bin/bash

if [ "$#" -ne 1 ]; then
   cp init.vim /Users/josephhu/.config/nvim
   cp .vimrc ~
else
   cp .vimrc ~
fi
