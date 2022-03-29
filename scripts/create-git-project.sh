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

user=$(git config --global user.name)

touch README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:$user/$folder.git
git branch -m master main
git push -u origin main
