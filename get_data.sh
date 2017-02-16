fs_CheckSum=976b462dd714a805a3d542525c647e55;  #wider_face_split.zip
tr_CheckSum=3fedf70df600953d25982bcd13d91ba2;  #WIDER_train.zip


FILE=wider_face_split.zip
echo "Checking File : $FILE"

if [ -d wider_face_split ];
then
    echo "dir alreday exist";
else
    echo "checking data exist..."
    if [ ! -f $FILE ]; then
        echo "hey File : $FILE not exits !"
        echo " you should go http://mmlab.ie.cuhk.edu.hk/projects/WIDERFace/ download it " 
        exit 1
    fi

    echo "checking data checksum..."
    checksum=`md5sum $FILE | awk '{ print $1 }'`
    if [ ! "$checksum" = "$fs_CheckSum" ]; then 
        echo $checksum
        echo $folds_CheckSum
        echo file $FILE : checksum error , need to rerun the script;
        exit 1;
    fi
    echo "pass!"
    unzip $FILE -d wider_face_split
fi


FILE=WIDER_train.zip
echo "Checking File : $FILE"

if [ -d WIDER_train ];
then
    echo "dir alreday exist";
else
    echo "checking data exist..."
    if [ ! -f $FILE ]; then
        echo "hey File : $FILE not exits !"
        echo " you should go http://mmlab.ie.cuhk.edu.hk/projects/WIDERFace/ download it " 
        exit 1
    fi

    echo "checking data checksum..."
    checksum=`md5sum $FILE | awk '{ print $1 }'`
    if [ ! "$checksum" = "$tr_CheckSum" ]; then 
        echo $checksum
        echo $folds_CheckSum
        echo file $FILE : checksum error , need to rerun the script;
        exit 1;
    fi
    echo "pass!"
    unzip $FILE -d WIDER_train
fi

