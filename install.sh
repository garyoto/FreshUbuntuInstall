#!/bin/sh

#automated install of Ubuntu 12.04
#Author: Garret Wais <garretlewis@gmail.com>

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-add-repository -y multiverse
sudo apt-get -y install aptitude
sudo apt-get -y install docky
sudo apt-get -y install chromium-browser
sudo apt-get -y install ubuntuone-client
sudo apt-get -y install ubuntuone-control-panel
sudo apt-get -y install ubuntuone-control-panel-gui
sudo apt-get -y install ipython
sudo apt-get -y install ipython-notebook
sudo apt-get -y install ipython-notebook-common
sudo apt-get -y install python-numpy
sudo apt-get -y install python-scipy
sudo apt-get -y install python-matplotlib
sudo apt-get -y install python-dev
sudo apt-get -y install git
sudo apt-get -y install gitk               # to view git history
sudo apt-get -y install python-sphinx
sudo apt-get -y install gfortran
sudo apt-get -y install openmpi-bin
sudo apt-get -y install liblapack-dev
sudo apt-get -y install thunar 
sudo apt-get -y install xxdiff             # to compare two files
sudo apt-get -y install python-sympy       # symbolic python
sudo apt-get -y install python-pip         # easy_install
sudo pip install nose                      # unit testing framework
sudo pip install StarCluster               # to help manage clusters on AWS
sudo pip install virtualenv
sudo pip install virtualenvwrapper
sudo pip install ipython-cluster-helper
sudo pip install ipython-sql               #RDBMS access via ipython

# Add Ubuntu-GIS repository
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
sudo apt-get -y install qgis

# Add cartodb repository
sudo add-apt-repository -y ppa:cartodb/gis #There are overlaps of packages in Cartodb and UbuntuGIS. Becareful!
sudo add-apt-repository -y ppa:cartodb/postgresql-9.3
sudo apt-get update


aptitude show ~i >installed_packages.txt  #spit out detailed list of all installed packages into home folder.
echo "Done"

