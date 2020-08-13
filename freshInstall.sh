# Will install:
#    vim
#    gedit
#    FreeCAD
#    gmsh
#  ! paraview   !--Cannot be done without user supervision
#    fenics
#    anaconda
#    gimp
#    audacity
#    steam
#    discord
# Will setup:
#    conda environment for fenics
#    bash aliases for jupyter notebook w/ & w/o FEniCS

# cd to Downloads folder for any necessary downloads
cd ~/Downloads/

# helpful to install this first
sudo apt-get install software-properties-common

echo "Installing VIM..."
sudo apt-get install vim -y

echo "Installing GEdit..."
sudo apt-get install gedit -y

echo "Installing GIMP..."
sudo apt-get install gimp -y

echo "Installing Audacity..."
sudo apt-get install audacity -y

echo "Installing Steam..."
sudo apt-get install steam -y

echo "Installing Discord..."
$ wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"sudo dpkg -i discord.deb

echo "Installing FreeCAD..."
sudo add-apt-repository ppa:freecad-maintainers/freecad-stable
sudo apg-get update
sudo apt-get install freecad

echo "Installing GMSH..."
sudo apt-get install gmsh -y

echo "Installing Anaconda..."
sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 -y
wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh
bash Anaconda3-2020.07-Linux-x86_64.sh

echo "Installing FEniCS..."
sudo apt-add-repository ppa:fenics-packages/fenics
sudo apt-get update
sudo apt-get install --no-install-recommends fenics

echo "Setting up Conda environment for FEniCS..."
conda create -n fenicsproject -c conda-forge fenics

echo "Adding 'jpnb' (jupyter notebook) and 'jpnbfp' (jupyter notebook *in fenicsproject environment*) to bash aliases..."
echo "alias jpnb=\"jupyter notebook\"" >> ~/.bash_aliases
echo "alias jpnbfp=\"conda activate fenicsproject && jupyter notebook && conda deactivate\"" >> ~/.bash_aliases
