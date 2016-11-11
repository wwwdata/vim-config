# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# restore brew packages
echo "---> Brew restore"
brew tap Homebrew/bundle
cd ~/.dotfiles/brew && brew bundle
cd ~/.dotfiles
echo "---> Brew restore done"

echo ""
echo "---> Neovim"
ln -s ~/.dotfiles/vim ~/.config/nvim
echo "---> Neovim done"

echo ""
echo "---> Tmux"
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
echo "---> Tmux done"

echo ""
echo "---> Fonts"
curl -L https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Original/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete.ttf -o ~/Library/Fonts/Ubuntu\ Mono\ Nerd\ Font\ Complete.ttf
curl -L https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Knack%20Regular%20Nerd%20Font%20Complete.ttf -o ~/Library/Fonts/Knack\ Regular\ Nerd\ Font\ Complete.ttf
echo "---> Fonts done"

echo ""
echo "========> Yay, Done!"
