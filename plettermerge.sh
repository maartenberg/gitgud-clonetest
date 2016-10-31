# Zeg maar dag tegen je merge conflict!

git pull $1
cat README.md | sed -r '/(<<<<|====|>>>>).*/d' > README.md
git add README.md
git commit -m "Plettermerge $1"
git push
