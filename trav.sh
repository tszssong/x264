mkdir ./data/$1
for line in `cat data/2k1face2.txt`
do
flvname=${line}".flv"
txtname=${line}".txt"
./x264 --bitrate $1 --bframe 0 --keyint 30 --roifile data/2k1face_roi/$txtname  -o ./data/$1/$flvname ../data/2k1face/$flvname
done
