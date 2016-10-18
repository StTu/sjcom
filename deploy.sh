jekyll build --destination /vol/websites/sjcom
cpwd=pwd
cd /vol/websites/sjcom
cd publications/
mogrify -resize 200x -format png */*.png
mogrify -resize 200x -format jpg */*.jpg
cd ..
cd images/
mogrify -resize '1000x>' -format png */*.png
mogrify -resize '1000x>' -format jpg */*.jpg
cd ..
git add *
val=date
git commit -m "$val"
git push --force
cd pwd
