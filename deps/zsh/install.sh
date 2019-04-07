# install zsh
sudo yay -S -noconfirm zsh

# install oh-my-zsh
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Copy .zshrc to ~/
cp .zshrc ~/

# Setup z plugin
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z

source ~/.zshrc
