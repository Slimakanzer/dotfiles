#!/usr/bin/env bash

SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
VSCODE_DIR=~/.vscode/extensions

echo "Installing and setup vimrc ..." 
mkdir -p ~/.vim && \
        cp -i "$SOURCE_DIR/.vimrc" ~/ && \
        cp -i "$SOURCE_DIR/.dracula.vim" ~/.vim/ && \
        echo "Done vim!"

echo "Installing and setup vscode extensions ..."
mkdir -p "$VSCODE_DIR" && \
        cp -ri $SOURCE_DIR/vscode/* "$VSCODE_DIR" && \
        echo "Done vscode!"
