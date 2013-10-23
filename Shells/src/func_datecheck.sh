#!/bin/bash
#
# NAME: func_datecheck.sh
#
# DESC: Check the format of date argument,
#       and initialize the global date parameter
#
# AUTH: wangzg

function date_check()
{
    echo "Starting date_check ..."

    if [ $# -eq 0 ]
    then
        BEG_DATE=$(date -d "yesterday" +%Y%m%d)
        END_DATE=$BEG_DATE
    elif [ $# -eq 1 ]
    then
        BEG_DATE=$(date -d "$1" +%Y%m%d)
        END_DATE=$BEG_DATE
    elif [ $# -eq 2 ]
    then
        BEG_DATE=$(date -d "$1" +%Y%m%d)
        END_DATE=$(date -d "$2" +%Y%m%d)
    else
        echo "---------------------------------------------"
        echo "Usage: $(basename $0) [begin_date] [END_DATE]"
        echo "---------------------------------------------"
        exit 1
    fi

    echo "Finished date_check ."
}
# END
