#!/bin/bash
#
# NAME: func_init_commons.sh
#
# DESC: Initialize common global parameters
#
# AUTH: wangzg

function init_commons()
{
    local arg_date=""
    
    if [ $# -ne 1 ]
    then
        echo "Usage: init_commons <date>"
    else
        arg_date=$(date -d "$1" +%Y%m%d)
    fi

    echo "Starting init_commons ..."

    export DATE_ID=$arg_date
    export DIR_DATE=$(date -d "$arg_date" +%Y/%m/%d)
    export DIR_DATEPRE=$(date -d "$arg_date - 1 day" +%Y/%m/%d)
    export DATA_VERSION="1"
    export PRODUCT_CATE="client_qos"

    # first-level directory


    ## client local

    export DIR_JARS="/disk6/datacenter/3_client/3_quality/jar"
    export DIR_DIMS_STATIC="/disk6/datacenter/mobile/conf"


    ## HDFS

    export DIR_RAWDATA="/dw/logs/client/origin"
    export DIR_FORMATS="/dw/logs/client/format"
    export DIR_ANALYSE="/dw/logs/3_client/3_qos/$DATA_VERSION"

    export DIR_RAWDATA_LABIN="/home/hadoop/labin/trimdata_hour"


    ## static dimension table file(direct file)

    export DIM_STATIC_IPTABLE="$DIR_DIMS_STATIC/ip_table"

    echo "Finished init_commons ."
}
# END
