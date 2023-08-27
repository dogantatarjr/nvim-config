# My Personal Neovim configuration

## Installation
if you want to install my configuration on your machine, first backup your existing configurationg if any exists.
```
mv "$HOME/.config/nvim" "$HOME/.config/nvim.bak"
```
then clone this repository into the nvim config location
```
git clone https://github.com/ahmetemregurdal/nvim-config "$HOME/.config/nvim"
```
and then remove the github stuff so that you can include this on your own github repository afterwards
```
rm -rf "$HOME/.config/nvim/.gitignore" "$HOME/.config/nvim/.git"
```

here is a one liner if you want to just copy and paste:
```
mv "$HOME/.config/nvim" "$HOME/.config/nvim.bak" && git clone https://github.com/ahmetemregurdal/nvim-config "$HOME/.config/nvim" && rm -rf "$HOME/.config/nvim/.gitignore" "$HOME/.config/nvim/.git"
```
