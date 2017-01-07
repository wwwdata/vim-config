# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# restore brew packages
echo "---> Brew restore"
brew tap Homebrew/bundle
cd ~/.dotfiles/brew && brew bundle
cd ~/.dotfiles
echo "---> Brew restore done"

echo ""
echo "---> ZSH"
git clone git@github.com:robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
mkdir -p ~/.oh-my-zsh/custom/themes
git clone git@github.com:bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
echo "---> ZSH done"

echo ""
echo "---> Neovim"
mkdir -p ~/.config
ln -s ~/.dotfiles/vim ~/.config/nvim
echo "---> Neovim done"

echo ""
echo "---> Tmux"
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
echo "---> Tmux done"

echo ""
echo "---> Alacritty"
mkdir -p ~/.config
ln -s ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty.yml
echo "---> Alacritty done"

echo ""
echo "---> Fonts"
curl -L https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Original/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete.ttf -o ~/Library/Fonts/Ubuntu\ Mono\ Nerd\ Font\ Complete.ttf
curl -L https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Knack%20Regular%20Nerd%20Font%20Complete.ttf -o ~/Library/Fonts/Knack\ Regular\ Nerd\ Font\ Complete.ttf
echo "---> Fonts done"

echo ""
echo "---> tic italic"
tic ~/.dotfiles/iterm/xterm-256color-italic.terminfo
tic -x ~/.dotfiles/tmux/tmux.terminfo
echo "---> tic italic done"

echo ""
echo "---> disable mouse acceleration"
defaults write .GlobalPreferences com.apple.mouse.scaling -1

echo ""
echo "---> ctrl-h fix"
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\177/' > $TERM.ti
tic $TERM.ti

echo ""
echo "========> Yay, Done!"
