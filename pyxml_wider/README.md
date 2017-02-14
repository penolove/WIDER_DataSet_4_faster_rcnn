# Annotation extraction from mat file

## downloads Widerface data set

and put it like:
![alt tag](https://raw.githubusercontent.com/penolove/pyxml_wider/master/pyxml_wider.png)

## Second extract infomations from mat file

```
python mat_extract.py > xywhXfile.txt
```
it will be look like:

ooxx/oxoxox.jpg
3 # number of faces in this picture
(x,y,w,h)
(x,y,w,h)
(x,y,w,h)
ooxx/oxoxoxox.jpg
...

## Finally , translate xywh to xml and renames JPGEs

```
python anno2xml.py
```
files will be saved in Wider2017 folder


# wh infomations

for the mean w,h for Wider face is :
(28.5,36.9)

wh k-means with k=4:


| w         | h           | 
| ------------- |:-------------:| 
| 61.88       | 80.28 | 
| 400.33      | 529.26      | 
| 14.76 | 18.8      | 
| 169.08 | 225.56      | 

![alt tag](https://raw.githubusercontent.com/penolove/pyxml_wider/master/WiderfaceWH.png)
