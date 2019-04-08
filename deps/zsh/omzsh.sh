# Manually run the 2 lines below
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# cp deps/zsh/.zshrc ~/

echo "Cloning ZSH plugins..."
git clone https://github.com/agkozak/zsh-z "$ZSH_CUSTOM/plugins/zsh-z"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"

echo "Setting colorscheme"
PROFILE_ID=$(dconf list /org/gnome/terminal/legacy/profiles:/)
dconf write /org/gnome/terminal/legacy/profiles:/$PROFILE_ID/palette \
"['rgb(7,54,66)', 'rgb(220,50,47)', 'rgb(93,214,19)', 'rgb(181,137,0)', 'rgb(41,170,243)', 'rgb(211,54,130)', \
'rgb(42,161,152)', 'rgb(238,232,213)', 'rgb(0,95,120)', 'rgb(203,75,22)', 'rgb(88,110,117)', \
'rgb(101,123,131)', 'rgb(131,148,150)', 'rgb(108,113,196)', 'rgb(147,161,161)', 'rgb(253,246,227)']"
dconf write /org/gnome/terminal/legacy/profiles:/$PROFILE_ID/background-color "rgb(18,18,19)"
dconf write /org/gnome/terminal/legacy/profiles:/$PROFILE_ID/bold-is-bright=false
dconf write /org/gnome/terminal/legacy/profiles:/$PROFILE_ID/use-theme-colors=false
