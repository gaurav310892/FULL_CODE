
download()
{
echo "Running the Download function:"
read -p "Type the url of the file to download: " URL
read -p "Type the location where you want to download the file to: " PATH1
#export $PATH1
wget -P ${PATH1} https://www.${URL}/
echo "Download function Complete"
}

download
