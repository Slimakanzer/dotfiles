#!/usr/bin/env bash
set +e
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

mv --backup ~/.bash_aliases ~/.bash_aliases.old
ln -f -s $SOURCE_DIR/.bash_aliases ~/.bash_aliases

mv --backup ~/.vimrc ~/.vimrc.old
ln -f -s $SOURCE_DIR/.vimrc ~/.vimrc

mkdir -p ~/.vim
ln -f -s $SOURCE_DIR/.dracula.vim ~/.vim/.dracula.vim

VSCODE_EXT_DIR=~/.vscode/extensions/

echo "Installing and setup vscode extensions ..."
mkdir -p "$VSCODE_EXT_DIR" && \
        cp -ri $SOURCE_DIR/vscode/* "$VSCODE_EXT_DIR" && \
        echo "Done vscode!"

cat << EOM
Do not forget:
        sudo usermod -aG docker \`whoami\`
        Install manually .vsix files located in $VSCODE_EXT_DIR
EOM
