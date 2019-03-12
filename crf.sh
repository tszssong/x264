dir="/Users/momo/Desktop/wy/"
outdir=$dir"sal_"$1
mkdir $outdir
for line in `cat $dir/$1.txt`
do
echo $line
mp4name=${line}".mp4"
flvname=${line}".flv"
txtname=${line}".txt"
./x264 --crf 25 --vbv-maxrate 4000 --vbv-bufsize 8000 --salientpath $dir"salint/"$line"/"${line}"_" -o $outdir/$flvname $dir"/ori/"$mp4name
done
