# install tmux
yay -S --noconfirm tmux
cp .tmux.conf ~/

# install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux source ~/.tmux.conf
