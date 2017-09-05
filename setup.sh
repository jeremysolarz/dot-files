#!/bin/bash
cd ~/
# ln -s source target
# link profile
ln -s ~/profile/bash/.bash_profile ~/.bash_profile 
# setup ssh
ln -s ~/profile/ssh/ ~/.ssh
# setup bin
ln -s ~/profile/bin/ ~/bin

# setup git
ln -s ~/profile/git/.gitattributes .gitattributes
ln -s ~/profile/git/.gitignore .gitignore
ln -s ~/profile/git/.gitconfig .gitconfig

# setup mercurial
ln -s ~/profile/mercurial/.hgrc .hgrc
ln -s ~/profile/mercurial/.hgignore .hgignore
ln -s ~/profile/mercurial/.hgignore_global .hgignore_global

# setup freetds
ln -s ~/profile/freetds/.freetds.config ~/.freetds.config
# setup brew
ln -s ~/profile/brew/.brew ~/.brew

# setup npm
ln -s ~/profile/npm/.npmrc ~/.npmrc

# setup vim
ln -s ~/profile/vim/.vim ~/.vim
ln -s ~/profile/vim/.vimrc ~/.vimrc
ln -s ~/profile/vim/.viminfo ~/.viminfo
