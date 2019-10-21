#!/bin/bash

#Function Begins
download()
{
echo "Running the Download function:"

#To take Inputs for URL and download location
read -p "Type the url of the file to download: " URL
read -p "Type the location where you want to download the file to: " PATH1

#Downloading the URL
wget -P ${PATH1} https://www.${URL}/
echo "Download function Complete"
}

download
