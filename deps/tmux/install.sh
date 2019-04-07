# install tmux
yay -S --noconfirm tmux
cp deps/tmux/.tmux.conf ~/

# install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux source ~/.tmux.conf
