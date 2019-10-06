set -x
mkdir -p ~/.vim/tmp
ln -snf $PWD/vimrc ~/.vimrc
ln -snf $PWD/screenrc ~/.screenrc
# We want to keep local bash options if any, so import instead of linking
source_cmd="source $PWD/bash_profile"
if ! grep -Fxq "$source_cmd" ~/.bash_profile
then
    echo "# .dotfiles source:" >> ~/.bash_profile
    echo $source_cmd >> ~/.bash_profile
fi
