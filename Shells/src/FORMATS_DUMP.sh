#!/bin/bash
#
# NAME: FORMATS_DUMP.sh
#
# DESC: Extract,transform from raw data to 
#       generate cleaning formatted data
#
# AUTH: wangzg

cd $DIR_JARS

echo "Dealing: FORMATS_DUMP ..."

if hadoop fs -test -e $DIR_FORMATS_DUMP 2>&1
then
    hadoop fs -rmr $DIR_FORMATS_DUMP 2>&1
fi

main_class="com.bi.client.preprocess.DumpPreprocessMR"

hadoop jar log_analytics_client_qos.jar $main_class --input  $DIR_RAWDATA_DUMP \
                                                    --output $DIR_FORMATS_DUMP \
                                                    --files  $DIM_STATIC_IPTABLE 2>&1
                            
if [ $? -ne 0 ]
then
    echo "Formats Operation Error: FORMATS_DUMP ." 1>&2
    exit 1
fi
