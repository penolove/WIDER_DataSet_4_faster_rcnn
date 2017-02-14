echo "Createing xywhfile....."
python mat_extract.py > xywhXfile.txt;

echo "WIDER2016 since WIDER is a larger dataset, it may take a while"
echo "Createing WIDER2016 fold, Images , Annotation xmls..."

start=`date +%s`
python anno2xml.py
end=`date +%s`

runtime=$((end-start))

echo "totally it takes :" $runtime "seconds"
