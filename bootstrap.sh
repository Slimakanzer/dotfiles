#!/usr/bin/env bash
set +e
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# link dotfiles
mv --backup ~/.bashrc ~/.bashrc.old
ln -f -s $SOURCE_DIR/.bashrc ~/.bashrc

mv --backup ~/.vimrc ~/.vimrc.old
ln -f -s $SOURCE_DIR/.vimrc ~/.vimrc
mkdir -p ~/.vim
ln -f -s $SOURCE_DIR/.dracula.vim ~/.vim/.dracula.vim


# instal vscode things
# Note vscode-server only for my HASH. To discover your hash and install suitable vscode-server:
#       1. vscode -> help -> about -> Commit: COMMIT_ID
#       2. download vscode-server-linux.tar.gz https://update.code.visualstudio.com/commit:COMMIT_ID/server-linux-x64/stable
#       3. replace tar.gz in the vscode-server folder with pattern COMMIT_ID-vscode-server.tar.gz
#       4. set your VSCODE_HASH=COMMIT_ID
VSCODE_HASH=622cb03f7e070a9670c94bae1a45d78d7181fbd4
VSCODE_EXT_DIR=~/.vscode/extensions/
VSCODE_SERVER_DIR=~/.vscode-server/bin/$VSCODE_HASH/

echo "Installing and setup vscode-server ..."
mkdir -p "$VSCODE_SERVER_DIR" && \
        tar -xzf "$SOURCE_DIR/vscode-server/$VSCODE_HASH-vscode-server-linux-x64.tar.gz" --strip-components 1 -C "$VSCODE_SERVER_DIR" && \
        echo "Done vscode-server!"

echo "Installing and setup vscode extensions ..."
mkdir -p "$VSCODE_EXT_DIR" && \
        cp -ri $SOURCE_DIR/vscode/* "$VSCODE_EXT_DIR" && \
        echo "Done vscode!"

cat << EOM

Do not forget:
        sudo usermod -aG docker \`whoami\`
        Install manually .vsix files located in $VSCODE_EXT_DIR
EOM
