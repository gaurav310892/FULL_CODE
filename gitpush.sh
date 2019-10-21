read -p "Paste the Path of dir that needs to be committed: " pathA
read -p "Enter the URL of url git branch: " urlA
read -p "Enter a commit message(optional, hit a enter if you dont want to add) :" comm
echo "Path set for uplading $pathA"
echo "URL selected for uploading is $urlA"
git config --global user.email gbhondve@rocketmail.com

if [ -z "$comm" ]
then
	comm=`date`
fi


git init
git add $pathA 
git commit -m "$comm"
git remote add origin $urlA
git push origin master
