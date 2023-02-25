if [ -d "build/" ]; then
  rm -rf build/
fi
mkdir build

cp -r uccrp temp

cd temp
find . -type f -iname "*.png" -exec optipng -nb -nc {} \;
zip -r ../build/uccrp.zip ./*
cd ..

rm -rf temp/
