#### 深度学习码控 - 基于显著性特征图
#### 脚本说明
###### crf.sh
&spmd; 执行方式crf.sh wy
[文件路径](https://github.com/tszssong/x264/blob/salient/doc/pic/salient_crf.png)
    dir="/Users/momo/Desktop/wy/" 在该路径下需有如上形式结构，压缩结果保存在salout_wy路径下
###### 需要注意的地方：  
1. x264.c parse_salientfile()里直接设置了filename长度为10，去掉“.txt” 4个字节，支持的有效帧数为999999帧，若视频过长会溢出
