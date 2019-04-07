# install yay (golang comes with yay, check if it exists afterwards)
sudo pacman -S --noconfirm yay

# install base-devel
yay -S --noconfirm base-devel

for dep in $(ls deps)
do
  sh deps/$dep/install.sh
done
