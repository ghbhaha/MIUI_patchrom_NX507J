#usage: ./Fullota.sh 4.8.21
# !/bin/sh
OTAPATH=otapath
DATE=$1
MODEL=NX507J
randstr() {
  index=0
  str=""
  for i in {a..z}; do arr[index]=$i; index=`expr ${index} + 1`; done
  for i in {0..9}; do arr[index]=$i; index=`expr ${index} + 1`; done
  for i in {0..9}; do arr[index]=$i; index=`expr ${index} + 1`; done
  for i in {1..10}; do str="$str${arr[$RANDOM%$index]}"; done
  echo $str
}

RANDSRT=`randstr`

echo 正在编译miui_"$MODEL"_suda_"$DATE"_"$RANDSRT"_4.4.2.zip
echo 请耐心等候。。。
cd ..
. build/envsetup.sh 
cd -
make fullota BUILD_NUMBER=$DATE
mv  out/fullota.zip ./miui_"$MODEL"_suda_"$DATE"_"$RANDSRT"_4.4.2.zip
if [ ! -d $OTAPATH ];
then
mkdir otapath
fi
mv  out/target_files.zip ./otapath/$DATE.zip
echo 编译完成，谢谢使用


