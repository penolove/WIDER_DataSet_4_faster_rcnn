
1. first download the dataset from WIDER dataset
http://mmlab.ie.cuhk.edu.hk/projects/WIDERFace/
- Wider Face Training Images : WIDER_train.zip (~1.3GB)
- Face annotations : wider_face_split.zip (~6MB)

2. git clone repository from github
```
git clone https://github.com/penolove/WIDER_DataSet_4_faster_rcnn.git

```

3. unzip those zip and put it into folder, 
check if your data put correctly
```
cd WIDER_DataSet_4_faster_rcnn
user@localhost:~/Documents/WIDER_DataSet_4_faster_rcnn$ ls
pyxml_wider  wider_face_split  WIDER_train
```
![alt tag](https://raw.githubusercontent.com/penolove/WIDER_DataSet_4_faster_rcnn/master/folders.png)



4. run the script
```
cd pyxml_wider
./runit.sh
```
for my machine , it takes ~350 s.
the shell will create WIDER_2016 directory  contains JPEGImages/Annotations

