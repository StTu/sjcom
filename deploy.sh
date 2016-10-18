jekyll build --destination /vol/websites/sjcom
cpwd=pwd
cd /vol/websites/sjcom
cd publications/
mogrify -resize 200x -format png */*.png
mogrify -resize 200x -format png */*.jpg
cd ..
git add *
val=date
git commit -m "$val"
git push
cd pwd
