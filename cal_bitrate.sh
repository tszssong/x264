dir=/Users/momo/Desktop/wy/
salient_dir=$dir$1
common_dir=$dir$2
for file in `ls $salient_dir`
do
bitrate1=`ffprobe -show_format $salient_dir/$file | grep "bit_rate"`
bitrate2=`ffprobe -show_format $common_dir/$file | grep "bit_rate"`
echo $file $bitrate1 $bitrate2 `echo "scale=2;$[bitrate2]/$[bitrate1]" | bc`
done
