#!/bin/bash


if [ "$#" -eq  "0" ]
then
    folder=${PWD##*/}
    echo "Creating new git repository: $folder"
else
	mkdir $1
    cd $1
    folder=$1
    echo "Creating new folder and new git repository: $folder"
fi

token=$(git config --global user.token)
user=$(git config --global user.name)
repo=$(printf '{"name":"%s","private":false}' $folder)
echo $repo

touch README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:magicmcallister/$folder.git
curl -u $user:$token https://api.github.com/user/repos -d $repo
git branch -m master main
git push -u origin main
