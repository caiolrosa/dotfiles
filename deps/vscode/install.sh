# install vscode
yay -S --noconfirm visual-studio-code-bin

extensions=(
  "dnlytras.nord-wave"
  "vscode-icons-team.vscode-icons"
  "christian-kohler.path-intellisense"
  "eamodio.gitlens"
  "esbenp.prettier-vscode"
  "redhat.vscode-yaml"
  "ms-vscode.go"
  "redhat.java"
  "ms-python.python"
)

for ext in "${extensions[@]}"
do
  # Uncomment the below lines to select which extensions to install
  #read -p "Install $ext? [Y/n] " OPTION
  #if [[ $OPTION == "y" || $OPTION == "Y" || $OPTION == "" ]]; then
    code --install-extension $ext
  #fi
done
