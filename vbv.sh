dir="/Volumes/song/videoQ_data/shortVideo/"
mkdir $dir"roi_vbv"$1"_"$2
for line in `cat $dir/$1.txt`
do
flvname=${line}".flv"
txtname=${line}".txt"
bitrate=`ffprobe -show_format  $dir/$1/$flvname | grep "bit_rate" `
echo $bitrate
val=`expr $[bitrate] \* $[$2] / 10000`
echo $val
./x264 --bitrate $val --vbv-maxrate 4000 --vbv-bufsize 8000 --roifile $dir$1"ROI"/$txtname  -o $dir"roi_vbv"$1"_"$2/$flvname $dir$1/$flvname
done
