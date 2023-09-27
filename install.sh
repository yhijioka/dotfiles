#/bin/bash

script_dir=$(cd $(dirname $0); pwd)

ln -sfnv ${script_dir}/config/git ${HOME}/.config/git
