#!/bin/bash
mkdir SteamDEInstaller
cd SteamDEInstaller

#get the main files

wget https://github.com/WildTom1/Steam-BigPicture-DE/raw/main/Steam_BigPicture.desktop
wget https://github.com/WildTom1/Steam-BigPicture-DE/raw/main/SteamBigPicture_with_extra_screens.sh

echo 'Xrandr to see avalible displays (y or n)?'
read yn

echo $yn

if [$yn == 'y']
    then
        xrandr
elif [$yn == 'yes']
    then
        xrandr
fi

echo 'What is the identifer for your second screen, example "DVI-D"'

read $screen

echo $screen

sed -i "s/'DIV-D-0'/$screen/g" SteamBigPicture_with_extra_screens.sh
