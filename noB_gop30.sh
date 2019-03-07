mkdir /Volumes/song/videoQ_data/xiaopeng/"roi"$1
for line in `cat /Volumes/song/videoQ_data/xiaopeng/5face.txt`
do
flvname=${line}".flv"
txtname=${line}".txt"
./x264 --bitrate $1 --bframe 0 --keyint 30 --roifile /Volumes/song/videoQ_data/xiaopeng/5faceROI/$txtname  -o /Volumes/song/videoQ_data/xiaopeng/"roi"$1/$flvname /Volumes/song/videoQ_data/xiaopeng/5face/$flvname
done
