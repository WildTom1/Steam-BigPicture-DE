#!/bin/bash
mkdir SteamDEInstaller
cd SteamDEInstaller

#get the main files

wget https://github.com/WildTom1/Steam-BigPicture-DE/raw/main/SteamBigPicture.sh
wget https://github.com/WildTom1/Steam-BigPicture-DE/raw/main/Steam_BigPicture.desktop
chmod +x SteamBigPicture.sh
sudo mv SteamBigPicture.sh /usr/bin
sudo mv Steam_BigPicture.desktop /usr/share/xsessions/

cd ../
rm -r SteamDEInstaller
echo Steam BigPicture DE has been installed
