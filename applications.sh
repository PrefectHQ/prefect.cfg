# Hombrew
echo "--------------------------------------------------"
echo "-> Installing Homebrew..."
echo "-> https://brew.sh"
echo "--------------------------------------------------\n"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Homebrew-Cask
echo "--------------------------------------------------"
echo "-> Installing Homebrew-Cask..."
echo "-> https://caskroom.github.io/"
echo "--------------------------------------------------\n"
brew tap homebrew/cask

# Google Chrome
echo "--------------------------------------------------"
echo "-> Installing Chrome..."
echo "-> https://www.google.com/chrome/"
echo "--------------------------------------------------\n"
brew cask install google-chrome

# tmux
echo "--------------------------------------------------"
echo "-> Installing tmux..."
echo "-> https://github.com/tmux/tmux"
echo "--------------------------------------------------\n"
brew install tmux

# 1Password
echo "--------------------------------------------------"
echo "-> Installing 1Password..."
echo "-> https://1password.com/"
echo "--------------------------------------------------\n"
brew cask install 1password

# Slack
echo "--------------------------------------------------"
echo "-> Installing Slack..."
echo "-> https://slack.com/"
echo "--------------------------------------------------\n"
brew cask install slack

# Google Cloud SDK
echo "--------------------------------------------------"
echo "-> Installing Google Cloud SDK..."
echo "--------------------------------------------------\n"
brew cask install google-cloud-sdk

# vim setup
echo "--------------------------------------------------"
echo "-> Installing some vim stuff..."
echo "--------------------------------------------------\n"
mkdir -p ~/.vim/colors
curl -o ~/.vim/colors/apprentice.vim https://raw.githubusercontent.com/romainl/Apprentice/master/colors/apprentice.vim
