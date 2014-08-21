#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
GIT_APPLY=$PORT_ROOT/tools/git.apply
BUILD_OUT=out

function appendSmaliPart() {
    for file in `find $1/smali -name *.part`
    do
        filepath=`dirname $file`
        filename=`basename $file .part`
        dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

function overlaySmali() {
    for file in `find $1/smali -name *.smali`
    do
        filepath=`dirname $file`
        cp -f $file out/$filepath
    done
}

function applyPatch() {
	for file in $1/*.patch
	do
		cp $file out/
		cd out
		git.apply `basename $file`
        for file2 in `find $2 -name *.rej`
        do
            echo "$file2 fail"
            exit 1
        done
		cd ..
	done
}


if [ $2 = "$BUILD_OUT/framework" ]
then 
    rm -rf $BUILD_OUT/framework/smali/android/telephony
    cp -rf overlay/framework/smali/* $BUILD_OUT/framework/smali
    cp -rf ../android/Editor/* $BUILD_OUT/framework/smali/android/widget/
fi


if [ $2 = "$BUILD_OUT/framework2" ]
then
    rm -rf $BUILD_OUT/framework2/smali/com/android/internal/telephony
    cp -rf overlay/framework2/smali/* $BUILD_OUT/framework2/smali
fi

