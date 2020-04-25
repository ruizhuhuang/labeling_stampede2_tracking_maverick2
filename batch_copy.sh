#!/bin/bash 
# run example: source batch_copy.sh 20191107 10 20
#base source, date  and target location, 
SRC="/corral-tacc/projects/Traffic-Camera-Video/Recordings/2020/Payton/"
LOC="LAMAR_PAYTON"
YMD=$1 #"20180830"
TAR="/work/03076/rhuang/stampede2/video_processing/LAMAR_PAYTON/$YMD"

#hours to be copied.
BEG=$2
END=$3
SIZE=1


mkdir -p $TAR
for i in `seq $BEG $SIZE $END`; 
do 
   #_END=$(( $i + $SIZE - 1))
   _NAME="${SRC}${LOC}_${YMD}$i*.mp4"
   if [ $i -lt 10 ]; then _NAME="${SRC}${LOC}_${YMD}0$i*.mp4"; fi
   echo "$_NAME";
   cp $_NAME $TAR

done 


echo "All Done"


