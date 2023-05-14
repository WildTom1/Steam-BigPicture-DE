#!/bin/bash
mkdir SteamDEInstaller
cd SteamDEInstaller

#get the main files

wget https://github.com/WildTom1/Steam-BigPicture-DE/raw/main/SteamBigPicture_with_extra_screens.sh
wget https://github.com/WildTom1/Steam-BigPicture-DE/raw/main/Steam_BigPicture.desktop
mv SteamBigPicture_with_extra_screens.sh SteamBigPicture.sh
chmod +x SteamBigPicture.sh
sudo mv SteamBigPicture.sh /usr/bin
sudo mv Steam_BigPicture.desktop /usr/share/xsessions/

cd ../
rm -r SteamDEInstaller
echo 'Steam BigPicture DE (With big picture) has been installed'
