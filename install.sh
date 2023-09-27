#/bin/bash

script_dir=$(cd $(dirname $0); pwd)

################################################################
# Symbolic links
################################################################

ln -sfnv ${script_dir}/config/git ${HOME}/.config/git
ln -sfnv ${script_dir}/zprofile ${HOME}/.zprofile
ln -sfnv ${script_dir}/zshrc ${HOME}/.zshrc
