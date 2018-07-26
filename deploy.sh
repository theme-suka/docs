mkdir ./deploy-git
cd ./deploy-git
git init
git config --global push.default matching
git config --global user.email "isukkaw@gmail.com"
git config --global user.name "SukkaW"
git remote add origin https://${GitHubKEY}@github.com/theme-suka/docs.git
git pull origin gh-pages
rm -rf ./*
cp -rf ../public/* ./
git add --all .
git commit -m "Travis CI Docs Auto Builder"
git push --quiet --force origin HEAD:gh-pages