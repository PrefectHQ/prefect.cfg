# Anaconda
echo "--------------------------------------------------"
echo "-> Installing Anaconda..."
echo "-> https://www.anaconda.com/distribution/"
echo "--------------------------------------------------\n"
brew cask install anaconda

echo "\n--------------------------------------------------"
echo "-> Installing Python packages..."
echo "    - black"
echo "    - ipdb"
echo "    - mypy"
echo "    - pylint"
echo "--------------------------------------------------\n"

pip install \
    black \
    ipdb \
    mypy \
    pylint
