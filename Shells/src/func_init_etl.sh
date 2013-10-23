#!/bin/bash
#
# NAME: func_init_etl.sh
#
# DESC: Initialize etl global parameters
#
# AUTH: wangzg

function init_etl()
{
    echo "Starting init_etl ..."

    # database connection
    export DB_HOST="192.168.117.25"
    export DB_PORT="1521"
    export DB_NAME="BIDW"
    export DB_USER="fubi_user_client"
    export DB_PSWD="qazwsx"

    # mail config
    export MAIL_SMTP="localhost"
    export MAIL_PORT="25"
    export MAIL_FROM="hadoop@localhost.localdomain"
    export MAIL_DEST="wangzg@funshion.com"

    # client local
    export KETTLE_HOME="/disk8/software/data-integration"
    export DIR_KETTLE="/disk6/datacenter/3_client/3_quality/kettle"
    export DIR_KETTLE_XMLS="${DIR_KETTLE}/xmls"
    export DIR_KETTLE_LOGS="${DIR_KETTLE}/logs"
    export DIR_KETTLE_FCTS="${DIR_KETTLE}/fcts"
    export DIR_KETTLE_DIMS="${DIR_KETTLE}/dims"
    export DIR_KETTLE_CTLS="${DIR_KETTLE}/ctls"

    # HDFS
    export HDFS_ADDRESS="hdfs://192.168.117.20:8020"

    echo "Finished init_etl ."
}
# END
