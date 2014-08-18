#!/bin/sh
DATE1=$1
DATE2=$2
AUTHOR=suda
MODEL=NX507J


cd ../..

. build/envsetup.sh

cd -

echo $PWD

echo 正在制作miui_ota_"$MODEL"_"$AUTHOR"_"$DATE1"_"$DATE2".zip升级包，请稍候。。。。。。

echo  

TOOLSPATH=$PORT_ROOT/tools
BUILDPATH=$PORT_ROOT/build

$TOOLSPATH/releasetools/ota_from_target_files -k $BUILDPATH/security/testkey -i $DATE1.zip $DATE2.zip miui_ota_"$MODEL"_"$AUTHOR"_"$DATE1"_"$DATE2".zip
