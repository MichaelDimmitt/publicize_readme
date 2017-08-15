#!/bin/bash
# mkdir publicize_readme;cp Readme* publicize_readme;cd publicize_readme;git init;git add Readme*;git remote add publicize_readme "https://gitlab.com/$1/$2";git push publicize_readme master; cd ..;rm -rf publicize_readme;git remove publicize_readme;

mkdir publicize_readme;
cp Readme.md publicize_readme;
# cp -rf public_folder publicize_readme;
# cp -rf package.* publicize_readme;

cd publicize_readme;
git init;
git add Readme.md; 
# git add public_folder; 
# git add package.*;


git remote add publicize_readme "https://gitlab.com/general_organization/$1";
git push publicize_readme master;

git remote rm publicize_readme;
cd ..;
rm -rf publicize_readme;
