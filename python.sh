# Anaconda
echo "--------------------------------------------------"
echo "-> Installing Anaconda..."
echo "-> https://www.anaconda.com/distribution/"
echo "--------------------------------------------------\n"
#brew cask install anaconda
if [[ -z `which conda` ]]; then
curl -fLO https://repo.continuum.io/archive/Anaconda3-2018.12-MacOSX-x86_64.sh
bash Anaconda3-2018.12-MacOSX-x86_64.sh
fi

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
