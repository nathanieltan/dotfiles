rm -R ~/.config/nvim
rm -R ~/.config/kitty
rm -R ~/.config/alacritty
rm -R ~/.zshrc

ln -s "$PWD/nvim" "/home/$USER/.config/nvim"
ln -s "$PWD/kitty" "/home/$USER/.config/kitty"
ln -s "$PWD/alacritty" "/home/$USER/.config/alacritty"
ln -s "$PWD/.zshrc" "/home/$USER/.zshrc"
