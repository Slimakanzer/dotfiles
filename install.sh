#!/usr/bin/env bash

SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "Installing and setup vimrc ..." 
mkdir -p ~/.vim && \
        cp "$SOURCE_DIR/.vimrc" ~/ && \
        cp "$SOURCE_DIR/.dracula.vim" ~/.vim/ && \
        echo "Done!"
