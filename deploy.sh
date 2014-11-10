#!/bin/sh

DIR=`pwd`

# Backup git configuration
BCK=$HOME/.git.backup
[ -e "$BCK" ] && echo "[Error] Backup directory already exists!" && exit 1
[ ! -e "$BCK" ] && echo "[Backup] Start backup old git environment." && mkdir $BCK
[ -e "$HOME/.gitconfig" ] && echo "[Backup] backup ~/.gitconfig" && mv ~/.gitconfig $BCK/

# Link the current gitconfig
cd ~/
echo "Install gitconfig in ~/.gitconfig"
ln -sf "$DIR/gitconfig" ~/.gitconfig
# Add git alias in .bashrc configuration
[ -n "`grep "Enable hachreak git alias" ~/.bashrc`" ] && echo "[Error] Git alias already installed in ~/.bashrc" && exit 2
echo "Install git alias"
echo "# Enable hachreak git alias" >> ~/.bashrc
echo "if [ -f $DIR/git_alias ]; then" >> ~/.bashrc
echo "  . $DIR/git_alias" >> ~/.bashrc
echo "fi" >> ~/.bashrc

