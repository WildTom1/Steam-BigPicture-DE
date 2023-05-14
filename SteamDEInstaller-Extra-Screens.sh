#!/bin/bash
mkdir SteamDEInstaller
cd SteamDEInstaller

#get the main files

wget https://github.com/WildTom1/Steam-BigPicture-DE/raw/main/Steam_BigPicture.desktop
wget https://github.com/WildTom1/Steam-BigPicture-DE/raw/main/SteamBigPicture_with_extra_screens.sh

echo 'Xrandr to see avalible displays (y or n)?'
read yn

if [[ $yn == y ]];#these were a pain to get running
    then
        xrandr
elif [[ $yn == yes ]];
    then
        xrandr
fi

echo 'What is the identifer for your second screen, example "DVI-D"'

read screen

sed -i "s|xrandr --output DVI-D-0 --off --auto|xrandr --output $screen --off --auto|g" SteamBigPicture_with_extra_screens.sh

mv SteamBigPicture_with_extra_screens.sh SteamBigPicture.sh
chmod +x SteamBigPicture.sh

sudo mv SteamBigPicture.sh /usr/bin
sudo mv Steam_BigPicture.desktop /usr/share/xsessions/

cd ../
rm -r SteamDEInstaller
echo Steam BigPicture DE has been installed
