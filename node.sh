# Node
echo "--------------------------------------------------"
echo "-> Installing Node..."
echo "-> https://nodejs.org/"
echo "--------------------------------------------------\n"
brew install node
brew postinstall node

# Yarn
echo "--------------------------------------------------"
echo "-> Installing Yarn..."
echo "-> https://yarnpkg.com/"
echo "--------------------------------------------------\n"
brew install yarn

# Prettier
echo "--------------------------------------------------"
echo "-> Installing Prettier..."
echo "-> https://prettier.io/"
echo "--------------------------------------------------\n"
yarn global add prettier
