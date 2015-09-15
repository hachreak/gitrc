#!/bin/sh
#
# >>> Copyright
#
# Leonardo Rossi <leonardo.rossi@studenti.unipr.it>
#
# Copyright (C) 2015 Leonardo Rossi.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, see <http://www.gnu.org/licenses/>.

DIR=`pwd`

# Backup git configuration
BCK=$HOME/.git.backup
[ -e "$BCK" ] && echo "[Warning] Backup directory already exists in $BCK!"
[ ! -e "$BCK" ] && echo "[Backup] Start backup old git environment." && mkdir $BCK
[ ! -e "$BCK" ] && [ -e "$HOME/.gitconfig" ] && echo "[Backup] backup ~/.gitconfig" && mv ~/.gitconfig $BCK/

# Link the current gitconfig
cd ~/
echo "Install gitconfig in ~/.gitconfig"
ln -sf "$DIR/gitconfig" ~/.gitconfig
# Add git alias in .bashrc configuration
if [ -n "`grep "Enable hachreak git alias" ~/.bashrc`" ]; then
  echo "[Warning] Git alias already installed in ~/.bashrc"
else
  echo "Install git alias"
  echo "# Enable hachreak git alias" >> ~/.bashrc
  echo "if [ -f $DIR/git_alias ]; then" >> ~/.bashrc
  echo "  . $DIR/git_alias" >> ~/.bashrc
  echo "fi" >> ~/.bashrc
fi

# Checkout plugins
cd $DIR
git submodule init
git submodule update
# Install plugins
if [ -n "`grep "Enable git-promt" ~/.bashrc`" ]; then
  echo "[Warning] Git-prompt already installed in ~/.bashrc"
else
  echo "Install git-prompt"
  echo "# Enable git-promt" >> ~/.bashrc
  echo "[[ \$- == *i* ]] && . $DIR/plugins/git-prompt/git-prompt.sh" >> ~/.bashrc
fi

