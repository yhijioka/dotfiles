#/bin/bash

script_dir=$(cd $(dirname $0); pwd)

################################################################
# Install packages
################################################################

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install packages from Homebrew
brew bundle --file ${script_dir}/Brewfile

################################################################
# Symbolic links
################################################################

ln -sfnv ${script_dir}/Brewfile ${HOME}/Brewfile
ln -sfnv ${script_dir}/config/git ${HOME}/.config/git
ln -sfnv ${script_dir}/zprofile ${HOME}/.zprofile
ln -sfnv ${script_dir}/zshrc ${HOME}/.zshrc

################################################################
# Setup packages
################################################################

# Add zsh which was installed from Homebrew to /etc/shells
echo "/opt/homebrew/bin/zsh" | sudo tee -a /etc/shells
echo "/opt/homebrew/bin/tmux" | sudo tee -a /etc/shells

# Change shell to zsh which was installed from Homebrew
sudo chsh -s /opt/homebrew/bin/zsh ${USER}

# Initialize anyenv
anyenv install --init

# Install pyenv
anyenv install pyenv
