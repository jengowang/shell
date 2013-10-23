#!/bin/bash
#
# NAME: func_init_formats.sh
#
# DESC: Initialize format layer global parameters
#
# AUTH: wangzg

function init_formats()
{
    echo "Starting init_formats ..."

    local rawdata_cate=""

    ## second-level directory

    ## 1.first floor: original log raw data

    rawdata_cate="playerror"
    export DIR_RAWDATA_PLAYERROR="$DIR_RAWDATA/$rawdata_cate/$DATA_VERSION/$DIR_DATE"

    rawdata_cate="dump"
    export DIR_RAWDATA_DUMP="$DIR_RAWDATA/$rawdata_cate/$DATA_VERSION/$DIR_DATE"

    rawdata_cate="playfailreport"
    export DIR_RAWDATA_PLAYFAILREPORT="$DIR_RAWDATA/$rawdata_cate/$DATA_VERSION/$DIR_DATE"

    rawdata_cate="hs"
    export DIR_RAWDATA_HS="$DIR_RAWDATA_LABIN/$DATE_ID/$rawdata_cate"

    rawdata_cate="login"
    export DIR_RAWDATA_LOGIN="$DIR_RAWDATA_LABIN/$DATE_ID/$rawdata_cate"


    ## 2.second floor: extracted & transformed data (format data)

    ### fsplay_after --> liuyn, boot --> wangzhe

    rawdata_cate="fsplay_after"
    export DIR_FORMATS_FSPLAYAFTER="$DIR_FORMATS/$rawdata_cate/$DIR_DATE"

    rawdata_cate="boot"
    export DIR_FORMATS_BOOT="$DIR_FORMATS/$rawdata_cate/$DIR_DATE"
    
    ### self

    rawdata_cate="playerror"
    export DIR_FORMATS_PLAYERROR="$DIR_FORMATS/$rawdata_cate/$DATA_VERSION/$DIR_DATE"

    rawdata_cate="dump"
    export DIR_FORMATS_DUMP="$DIR_FORMATS/$rawdata_cate/$DATA_VERSION/$DIR_DATE"

    rawdata_cate="playfailreport"
    export DIR_FORMATS_PLAYFAILREPORT="$DIR_FORMATS/$rawdata_cate/$DATA_VERSION/$DIR_DATE"

    ### labin --> niewf

    rawdata_cate="inline_page"
    export DIR_FORMATS_INLINEPAGE="$DIR_FORMATS/$rawdata_cate/$DIR_DATE"

    rawdata_cate="play_buffering"
    export DIR_FORMATS_PLAYBUFFERING="$DIR_FORMATS/$rawdata_cate/$DIR_DATE"

    rawdata_cate="play_halt"
    export DIR_FORMATS_PLAYHALT="$DIR_FORMATS/$rawdata_cate/$DIR_DATE"

    rawdata_cate="play_halt_detail"
    export DIR_FORMATS_PLAYHALTDETAIL="$DIR_FORMATS/$rawdata_cate/$DIR_DATE"

    rawdata_cate="dtfsp"
    export DIR_FORMATS_DTFSP="$DIR_FORMATS/$rawdata_cate/$DIR_DATE"

    rawdata_cate="dtjs"
    export DIR_FORMATS_DTJS="$DIR_FORMATS/$rawdata_cate/$DIR_DATE"

    rawdata_cate="taskflux_source"
    export DIR_FORMATS_TASKFLUXSOURCE="$DIR_FORMATS/$rawdata_cate/$DIR_DATE"

    rawdata_cate="player_buff"
    export DIR_FORMATS_PLAYERBUFF="$DIR_FORMATS/$rawdata_cate/$DIR_DATE"

    rawdata_cate="hs"
    export DIR_FORMATS_HS="$DIR_FORMATS/$rawdata_cate/$DIR_DATE"

    rawdata_cate="login"
    export DIR_FORMATS_LOGIN="$DIR_FORMATS/$rawdata_cate/$DIR_DATE"

    echo "Finished init_formats ."
}
# END
