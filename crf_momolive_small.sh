dir="/Users/momo/Desktop/wy/"
outdir=$dir"salout_"$1
mkdir $outdir
for line in `cat $dir/$1.txt`
do
echo $line
saldir=$dir"momolive/"$line"/"
inname=${line}".flv"
outname=${line}".flv"
echo $inname $outname $saldir
./x264 --crf 24 --vbv-maxrate 4000 --vbv-bufsize 8000 --salientpath $saldir$line"_"  -o $outdir/$outname $dir"/momolive/"$inname
#./x264 --crf 24 --vbv-maxrate 4000 --vbv-bufsize 8000 --salientpath $saldir$line"/"${line}"_" -o $outdir/$outname $dir"/momolive/"$inname
done
