#### 深度学习码控
支持外部指定ROI区域，对该区域无损编码  
    ./x264 --bitrate 256 -o ../data/test.flv 1.flv --roifile ../data/roifile.txt  --qpfile ../data/qpfile.txt    
qpfile和roifile格式：    
![文件格式](https://github.com/tszssong/x264/blob/rc4dl/doc/qpfile%E6%A0%BC%E5%BC%8F.png)
