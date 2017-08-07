
# mkdir publicize_readme;cp Readme* publicize_readme;cd publicize_readme;git init;git add Readme*;git remote add publicize_readme "https://gitlab.com/$1/$2";git push publicize_readme master; cd ..;rm -rf publicize_readme;git remove publicize_readme;

mkdir publicize_readme;
cp Readme* publicize_readme;
cd publicize_readme;
git init;
git add Readme*;
git remote add publicize_readme "https://gitlab.com/$1/$2";
# git remote add publicize_readme "https://gitlab.com/general_organization/$1";
git push publicize_readme master; 
# git push "https://gitlab.com/general_organization/$1";
# git push "https://gitlab.com/$1/$2";

cd ..;
rm -rf publicize_readme;
git remove publicize_readme;
