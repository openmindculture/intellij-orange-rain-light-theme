echo "build theme distribution $1 ..."
mkdir -pv build/intellij-orange-rain-light-theme
rm -rf build/intellij-orange-rain-light-theme/*
mkdir -pv build/intellij-orange-rain-light-theme/lib
mkdir -pv build/intellij-orange-rain-light-theme-$1
cp -rv src/main/resources/* build/intellij-orange-rain-light-theme-$1/
cd build
cd intellij-orange-rain-light-theme-$1
zip -rv ../intellij-orange-rain-light-theme/lib/intellij-orange-rain-light-theme-$1.jar ./*
cd ..
mkdir -pv distributions
zip -rv distributions/intellij-orange-rain-light-theme-$1.zip.tmp intellij-orange-rain-light-theme
rm -f distributions/intellij-orange-rain-light-theme-$1.zip
mv distributions/intellij-orange-rain-light-theme-$1.zip.tmp distributions/intellij-orange-rain-light-theme-$1.zip
echo "done"
