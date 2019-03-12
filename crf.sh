dir="/Users/momo/Desktop/wy/"
outdir=$dir"salout_"$1
saldir=$dir"salient/"
mkdir $outdir
for line in `cat $dir/$1.txt`
do
echo $line
mp4name=${line}".mp4"
flvname=${line}".flv"
./x264 --crf 24 --vbv-maxrate 4000 --vbv-bufsize 8000 --salientpath $saldir$line"/"${line}"_" -o $outdir/$flvname $dir"/ori/"$mp4name
done
