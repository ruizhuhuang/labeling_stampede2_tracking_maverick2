#!/bin/bash
# source batch_submission.sh 20200314 
DATE=$1
SRC="/work/03076/rhuang/stampede2/video_processing/LAMAR_PAYTON/$DATE/"
TAR="/work/03076/rhuang/stampede2/video_processing/LAMAR_PAYTON/out/$DATE/"
BEG=1
END=44
SIZE=3


for i in `seq $BEG $SIZE $END`; 
do 
   _END=$(( $i + $SIZE - 1))
   if [ $_END -gt $END ]; then _END=$END; fi
   echo "sbatch job4script $SRC $TAR $i $_END";

#double check before turn it on
   sbatch job4script $SRC $TAR $i $_END
   sleep 10

done 


#while [ $BEG -le $END ]
#do  
#  _END=$(( $BEG + $SIZE - 1))
#
#  echo $BEG $_END
#  BEG=$(($_END + 1))
#done 

echo "All Done"


