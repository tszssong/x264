mkdir /Volumes/song/videoQ_data/xiaopeng/"roi"$1"_"$2
for line in `cat /Volumes/song/videoQ_data/xiaopeng/$1.txt`
do
flvname=${line}".flv"
txtname=${line}".txt"
bitrate=`ffprobe -show_format  /Volumes/song/videoQ_data/xiaopeng/$1/$flvname | grep "bit_rate" `
echo $bitrate
val=`expr $[bitrate] \* $[$2] / 10000`
echo $val
./x264 --bitrate $val --bframe 0 --keyint 30 --roifile /Volumes/song/videoQ_data/xiaopeng/$1"ROI"/$txtname  -o /Volumes/song/videoQ_data/xiaopeng/"roi"$1"_"$2/$flvname /Volumes/song/videoQ_data/xiaopeng/$1/$flvname
done
