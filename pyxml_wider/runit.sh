echo "Createing xywhfile....."
python mat_extract.py > xywhXfile.txt;

echo "Since WIDER is a larger dataset, it may take for a while"
echo "Createing WIDER2016 fold, Images , Annotation xmls..."

start=`date +%s`
python anno2xml.py
end=`date +%s`

runtime=$((end-start))

rm xywhXfile.txt
echo "totally it takes :" $runtime "seconds"


