for %%I in (.) do set dirName=%%~nxI
curl -i -H "Authorization: token c15d0b6a06483772373ea3f953f9672d5611d96c" -d "{\"name\": \"%dirName%\", \"auto_init\": \"true\", \"private\": \"true\" }" https://api.github.com/user/repos
git init
echo>placeholder.txt
git add .
git commit -m "initial commit --auto"
git remote add origin https://github.com/kiranjd/%dirName%.git
git push -f --set-upstream origin master