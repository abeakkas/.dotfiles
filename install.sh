set -x
ln -snf $PWD/.vimrc ~/.vimrc
ln -snf $PWD/.screenrc ~/.screenrc
# We want to keep local bash options if any:
source_cmd="source $PWD/.bash_profile"
if [ "$(cat ~/.bash_profile | tail -1)" != "$source_cmd" ];
then
    echo "# .dotfiles source:" >> ~/.bash_profile
    echo $source_cmd >> ~/.bash_profile
fi
