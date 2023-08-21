echo "This script will delete:"
echo " - ~/.config/nvim/*"
echo " - ~/.local/share/nvim/*"
echo " - ~/.cache/nvim/*"
echo "And install the new configuration"
echo "Are you sure? [y/N]: "

read -r choice
if [[ $choice != "y" ]]; then
    exit 1
fi

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
unzip nvim.zip -d ~/.config
echo "Done"
