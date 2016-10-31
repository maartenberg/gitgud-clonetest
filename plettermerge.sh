# Zeg maar dag tegen je merge conflict!

git pull $1
sed -r '/(<<<<|====|>>>>).*/d' < README.md > README.md
git add README.md
git commit -m "Plettermerge $1"
git push
