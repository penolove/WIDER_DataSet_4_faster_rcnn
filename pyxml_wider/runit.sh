echo "check data setfolder exist" 

DIRECTORY="../wider_face_split/"
if [ ! -d "$DIRECTORY" ]; then
    echo " Oops ,It seems data not downloaded properly !"
    exit 1;
fi

DIRECTORY="../WIDER_train/"
if [ ! -d "$DIRECTORY" ]; then
    echo " Oops ,It seems data not downloaded properly !"
    exit 1;
fi

echo "Createing xywhfile....."
python mat_extract.py > xywhXfile.txt;

echo "Since WIDER is a larger dataset, it may take for a while"
echo "Createing WIDER_2016 fold, Images , Annotation xmls..."

start=`date +%s`
python anno2xml.py
end=`date +%s`

runtime=$((end-start))

rm xywhXfile.txt
echo "totally it takes :" $runtime "seconds"

#creating training testing set
python randomSet.py WIDER_2016 0.9
