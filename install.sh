#!/bin/sh

#automated install of Ubuntu 12.04 packages
#Author: Garret Wais <garretlewis@gmail.com>

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-add-repository -y multiverse
sudo apt-get -y install pgadmin
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

# Add Ivan Mincik repository for latest QGIS
sudo add-apt-repository ppa:imincik/qgis-master
sudo apt-get update
sudo apt-get -y install qgis=2.1.0+git20131214~c4b2480~precise1  #latest as of 2/6/2014

# Add Ubuntu-GIS repository
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
sudo apt-get -y install grass libgdal-ecw-src libgdal-grass libgeotiff-dfsg liblas spatialite spatialite-gui spatialite-tools saga

# Add cartodb repositories
sudo add-apt-repository -y ppa:cartodb/postgresql-9.3 #There are overlaps of packages in Cartodb and UbuntuGIS. Its good to specify a version number. Becareful!
sudo add-apt-repository -y ppa:cartodb/gis
sudo apt-get update
sudo apt-get install postgresql-9.3-postgis-2.1=2.1.0-4.cdb+1precise4 postgresql-9.3-postgis-2.1-scripts=2.1.0-4.cdb+1precise4  #as of 2/6/2014 version postgis 2.1 with postgresql 9.3
sudo apt-get -y install gdal-bin=1.10.1-0cdb1~precise2 libgdal-dev

#Add Team Georepublic repository for pgrouting
sudo add-apt-repository ppa:georepublic/pgrouting
sudo apt-get update
sudo apt-get -y install postgresql-9.1-pgrouting osm2pgrouting pgrouting-workshop
sudo apt-get update

# Add rasterio, fiona, and shapely

#install phonegap and denpendencies
#node
sudo apt-get install -y python-software-properties g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs

#phonegap
sudo npm install -g phonegap

#openjdk
sudo apt-get install -y openjdk-7-jdk openjdk-7-jre



aptitude show ~i >installed_packages.txt  #spit out detailed list of all installed packages into current folder.
echo "Done"

