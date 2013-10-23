#!/bin/bash
#
# NAME: func_init_analyse.sh
#
# DESC: Initialize analyse global parameters
#
# AUTH: wangzg

function init_analyse()
{
    echo "Starting init_analyse ..."

    local indicator=""

    # 4.fourth floor: The finest grain size analysis data

    ## second-level directory

    DIR_ANALYSE_DATE="$DIR_ANALYSE/F_CLIENT_PLAY_FAIL_DAY_SUMMARY"
    DIR_ANALYSE_DATE_VERSION_CLOSECODE_ERRORCODE_PLAYTYPE_MOVIEFORM="$DIR_ANALYSE/F_CLIENT_PLAY_FAIL_DAY_DIM"
    DIR_ANALYSE_DATE_VERSION_ERRORCODE="$DIR_ANALYSE/F_CLIENT_PLAY_FAIL_DAY_VER"
    DIR_ANALYSE_DATE_VERSION_MODULE="$DIR_ANALYSE/F_CLIENT_CRASH_DETAIL"
    DIR_ANALYSE_DATE_VERSION_ISP="$DIR_ANALYSE/F_CLIENT_BETA_INDICATOR"
    DIR_ANALYSE_DATE_VERSION="$DIR_ANALYSE/F_CLIENT_BETA_INDICATOR"
    DIR_ANALYSE_DATE_VERS_PROV_ISP_NET="$DIR_ANALYSE/S_DATE_VERS_PROV_ISP_NET"
    DIR_ANALYSE_DATE_HOUR_VERS="$DIR_ANALYSE/S_DATE_HOUR_VERS"
    DIR_ANALYSE_DATE_VERS_PROV_ISP_SERV_LGMD="$DIR_ANALYSE/S_DATE_VERS_PROV_ISP_SERV_LGMD"

    ### third-level directory

    ### 1.By Dimension: date

    indicator="S_DATE_FSPLAYAFTER"
    export DIR_ANALYSE_DATE_FSPLAYAFTER_LOCAL="$DIR_ANALYSE_DATE/$indicator/local"
    export DIR_ANALYSE_DATE_FSPLAYAFTER="$DIR_ANALYSE_DATE/$indicator/$DIR_DATE"
    indicator="S_DATE_PLAYERROR"
    export DIR_ANALYSE_DATE_PLAYERROR_LOCAL="$DIR_ANALYSE_DATE/$indicator/local"
    export DIR_ANALYSE_DATE_PLAYERROR="$DIR_ANALYSE_DATE/$indicator/$DIR_DATE"
    indicator="S_DATE_QQ_PLAYERROR"
    export DIR_ANALYSE_DATE_QQ_PLAYERROR_LOCAL="$DIR_ANALYSE_DATE/$indicator/local"
    export DIR_ANALYSE_DATE_QQ_PLAYERROR="$DIR_ANALYSE_DATE/$indicator/$DIR_DATE"


    ### 2.By Dimension: date & closemode & errorcode & playtype & movieform

    indicator="S_DATE_VERSION_CLOSECODE_ERRORCODE_PLAYTYPE_MOVIEFORM_PLAYERROR"
    export DIR_ANALYSE_DATE_VERSION_CLOSECODE_ERRORCODE_PLAYTYPE_MOVIEFORM_PLAYERROR_LOCAL="$DIR_ANALYSE_DATE_VERSION_CLOSECODE_ERRORCODE_PLAYTYPE_MOVIEFORM/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_CLOSECODE_ERRORCODE_PLAYTYPE_MOVIEFORM_PLAYERROR="$DIR_ANALYSE_DATE_VERSION_CLOSECODE_ERRORCODE_PLAYTYPE_MOVIEFORM/$indicator/$DIR_DATE"


    ### 3.By Dimension: date & version & errorcode

    indicator="S_DATE_VERSION_ERRORCODE_PLAYERROR"
    export DIR_ANALYSE_DATE_VERSION_ERRORCODE_PLAYERROR_LOCAL="$DIR_ANALYSE_DATE_VERSION_ERRORCODE/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ERRORCODE_PLAYERROR="$DIR_ANALYSE_DATE_VERSION_ERRORCODE/$indicator/$DIR_DATE"


    ### 4.By Dimension: date & version & module

    indicator="S_DATE_VERSION_MODULEDETAIL_DUMP"
    export DIR_ANALYSE_DATE_VERSION_MODULEDETAIL_DUMP_LOCAL="$DIR_ANALYSE_DATE_VERSION_MODULE/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_MODULEDETAIL_DUMP="$DIR_ANALYSE_DATE_VERSION_MODULE/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_MODULETOTAL_DUMP"
    export DIR_ANALYSE_DATE_VERSION_MODULETOTAL_DUMP_LOCAL="$DIR_ANALYSE_DATE_VERSION_MODULE/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_MODULETOTAL_DUMP="$DIR_ANALYSE_DATE_VERSION_MODULE/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_MODULETOTAL_BOOT"
    export DIR_ANALYSE_DATE_VERSION_MODULETOTAL_BOOT_LOCAL="$DIR_ANALYSE_DATE_VERSION_MODULE/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_MODULETOTAL_BOOT="$DIR_ANALYSE_DATE_VERSION_MODULE/$indicator/$DIR_DATE"


    ### 5.By Dimension: date & version & isp

    indicator="S_DATE_VERSION_ISP_BOOT"
    export DIR_ANALYSE_DATE_VERSION_ISP_BOOT_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_BOOT="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_BOOT_ERRORCODEG0"
    export DIR_ANALYSE_DATE_VERSION_ISP_BOOT_ERRORCODEG0_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_BOOT_ERRORCODEG0="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_PLAYBUFFERING"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYBUFFERING_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYBUFFERING="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_PLAYBUFFERING_OK1"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYBUFFERING_OK1_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYBUFFERING_OK1="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_PLAYBUFFERING_OK0BTG20"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYBUFFERING_OK0BTG20_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYBUFFERING_OK0BTG20="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_PLAYBUFFERING_BTPN"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYBUFFERING_BTPN_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYBUFFERING_BTPN="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_PLAYBUFFERING_PRN0_SDN0_BTG10"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYBUFFERING_PRN0_SDN0_BTG10_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYBUFFERING_PRN0_SDN0_BTG10="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_PLAYERBUFF"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYERBUFF_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYERBUFF="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_PLAYHALT"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYHALT_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYHALT="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_PLAYHALT_HC0"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYHALT_HC0_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYHALT_HC0="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_PLAYHALTDETAIL_HT1"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYHALTDETAIL_HT1_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYHALTDETAIL_HT1="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_PLAYHALTDETAIL_HT1_HC0"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYHALTDETAIL_HT1_HC0_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYHALTDETAIL_HT1_HC0="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_PLAYHALTDETAIL_HT1_DHC0"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYHALTDETAIL_HT1_DHC0_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYHALTDETAIL_HT1_DHC0="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_PLAYHALTDETAIL_HT1_DHC0_HC0"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYHALTDETAIL_HT1_DHC0_HC0_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYHALTDETAIL_HT1_DHC0_HC0="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_PLAYERROR"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYERROR_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYERROR="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_PLAYFAILREPORT"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYFAILREPORT_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_PLAYFAILREPORT="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_TASKFLUXSOURCE_SUMFLUX"
    export DIR_ANALYSE_DATE_VERSION_ISP_TASKFLUXSOURCE_SUMFLUX_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_TASKFLUXSOURCE_SUMFLUX="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_DTFSP_LE0"
    export DIR_ANALYSE_DATE_VERSION_ISP_DTFSP_LE0_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_DTFSP_LE0="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_DTFSP_LE1"
    export DIR_ANALYSE_DATE_VERSION_ISP_DTFSP_LE1_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_DTFSP_LE1="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_DTFSP_LE2LE3"
    export DIR_ANALYSE_DATE_VERSION_ISP_DTFSP_LE2LE3_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_DTFSP_LE2LE3="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_DTJS_LE0"
    export DIR_ANALYSE_DATE_VERSION_ISP_DTJS_LE0_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_DTJS_LE0="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_DTJS_LE1"
    export DIR_ANALYSE_DATE_VERSION_ISP_DTJS_LE1_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_DTJS_LE1="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_ISP_DTJS_LE2LE3"
    export DIR_ANALYSE_DATE_VERSION_ISP_DTJS_LE2LE3_LOCAL="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_ISP_DTJS_LE2LE3="$DIR_ANALYSE_DATE_VERSION_ISP/$indicator/$DIR_DATE"
    
    
    ### 6.By Dimension: date & version

    indicator="S_DATE_VERSION_BOOT"
    export DIR_ANALYSE_DATE_VERSION_BOOT_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_BOOT="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_BOOT_ERRORCODEG0"
    export DIR_ANALYSE_DATE_VERSION_BOOT_ERRORCODEG0_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_BOOT_ERRORCODEG0="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_PLAYBUFFERING"
    export DIR_ANALYSE_DATE_VERSION_PLAYBUFFERING_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_PLAYBUFFERING="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_PLAYBUFFERING_OK1"
    export DIR_ANALYSE_DATE_VERSION_PLAYBUFFERING_OK1_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_PLAYBUFFERING_OK1="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_PLAYBUFFERING_OK0BTG20"
    export DIR_ANALYSE_DATE_VERSION_PLAYBUFFERING_OK0BTG20_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_PLAYBUFFERING_OK0BTG20="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_PLAYBUFFERING_BTPN"
    export DIR_ANALYSE_DATE_VERSION_PLAYBUFFERING_BTPN_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_PLAYBUFFERING_BTPN="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_PLAYBUFFERING_PRN0_SDN0_BTG10"
    export DIR_ANALYSE_DATE_VERSION_PLAYBUFFERING_PRN0_SDN0_BTG10_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_PLAYBUFFERING_PRN0_SDN0_BTG10="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_PLAYERBUFF"
    export DIR_ANALYSE_DATE_VERSION_PLAYERBUFF_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_PLAYERBUFF="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_PLAYHALT"
    export DIR_ANALYSE_DATE_VERSION_PLAYHALT_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_PLAYHALT="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_PLAYHALT_HC0"
    export DIR_ANALYSE_DATE_VERSION_PLAYHALT_HC0_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_PLAYHALT_HC0="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_PLAYHALTDETAIL_HT1"
    export DIR_ANALYSE_DATE_VERSION_PLAYHALTDETAIL_HT1_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_PLAYHALTDETAIL_HT1="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_PLAYHALTDETAIL_HT1_HC0"
    export DIR_ANALYSE_DATE_VERSION_PLAYHALTDETAIL_HT1_HC0_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_PLAYHALTDETAIL_HT1_HC0="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_PLAYHALTDETAIL_HT1_DHC0"
    export DIR_ANALYSE_DATE_VERSION_PLAYHALTDETAIL_HT1_DHC0_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_PLAYHALTDETAIL_HT1_DHC0="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_PLAYHALTDETAIL_HT1_DHC0_HC0"
    export DIR_ANALYSE_DATE_VERSION_PLAYHALTDETAIL_HT1_DHC0_HC0_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_PLAYHALTDETAIL_HT1_DHC0_HC0="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_PLAYERROR"
    export DIR_ANALYSE_DATE_VERSION_PLAYERROR_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_PLAYERROR="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_PLAYFAILREPORT"
    export DIR_ANALYSE_DATE_VERSION_PLAYFAILREPORT_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_PLAYFAILREPORT="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_TASKFLUXSOURCE_SUMFLUX"
    export DIR_ANALYSE_DATE_VERSION_TASKFLUXSOURCE_SUMFLUX_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_TASKFLUXSOURCE_SUMFLUX="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_DTFSP_LE0"
    export DIR_ANALYSE_DATE_VERSION_DTFSP_LE0_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_DTFSP_LE0="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_DTFSP_LE1"
    export DIR_ANALYSE_DATE_VERSION_DTFSP_LE1_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_DTFSP_LE1="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_DTFSP_LE2LE3"
    export DIR_ANALYSE_DATE_VERSION_DTFSP_LE2LE3_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_DTFSP_LE2LE3="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_DTJS_LE0"
    export DIR_ANALYSE_DATE_VERSION_DTJS_LE0_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_DTJS_LE0="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_DTJS_LE1"
    export DIR_ANALYSE_DATE_VERSION_DTJS_LE1_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_DTJS_LE1="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"

    indicator="S_DATE_VERSION_DTJS_LE2LE3"
    export DIR_ANALYSE_DATE_VERSION_DTJS_LE2LE3_LOCAL="$DIR_ANALYSE_DATE_VERSION/$indicator/local"
    export DIR_ANALYSE_DATE_VERSION_DTJS_LE2LE3="$DIR_ANALYSE_DATE_VERSION/$indicator/$DIR_DATE"


    ### 7.By Dimension: date & version & province & isp & nettype

    indicator="S_DATE_VERS_PROV_ISP_NET_PLAYBUFFERING_BTPNOK1"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYBUFFERING_BTPNOK1_LOCAL="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/local"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYBUFFERING_BTPNOK1="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/$DIR_DATE"

    indicator="S_DATE_VERS_PROV_ISP_NET_PLAYBUFFERING_BTPNOK0"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYBUFFERING_BTPNOK0_LOCAL="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/local"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYBUFFERING_BTPNOK0="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/$DIR_DATE"

    indicator="S_DATE_VERS_PROV_ISP_NET_PLAYHALT_HTAPN"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYHALT_HTAPN_LOCAL="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/local"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYHALT_HTAPN="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/$DIR_DATE"

    indicator="S_DATE_VERS_PROV_ISP_NET_PLAYBUFFERING_SUCCFAIL"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYBUFFERING_SUCCFAIL_LOCAL="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/local"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYBUFFERING_SUCCFAIL="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/$DIR_DATE"

    indicator="S_DATE_VERS_PROV_ISP_NET_PLAYHALT_HALTCOUNT"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYHALT_HALTCOUNT_LOCAL="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/local"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYHALT_HALTCOUNT="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/$DIR_DATE"

    indicator="S_DATE_VERS_PROV_ISP_NET_PLAYHALT_HALTCOUNT0"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYHALT_HALTCOUNT0="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/$DIR_DATE"

    indicator="S_DATE_VERS_PROV_ISP_NET_PLAYHALT_HALTCOUNT1"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYHALT_HALTCOUNT1="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/$DIR_DATE"

    indicator="S_DATE_VERS_PROV_ISP_NET_PLAYHALT_HALTCOUNT2"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYHALT_HALTCOUNT2="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/$DIR_DATE"

    indicator="S_DATE_VERS_PROV_ISP_NET_PLAYHALT_HALTCOUNT3"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYHALT_HALTCOUNT3="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/$DIR_DATE"

    indicator="S_DATE_VERS_PROV_ISP_NET_PLAYHALT"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYHALT_LOCAL="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/local"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_NET_PLAYHALT="$DIR_ANALYSE_DATE_VERS_PROV_ISP_NET/$indicator/$DIR_DATE"


    ### 8.By Dimension: date & hour & version

    indicator="S_DATE_HOUR_VERS_PLAYBUFFERING_BTPNOK1"
    export DIR_ANALYSE_DATE_HOUR_VERS_PLAYBUFFERING_BTPNOK1_LOCAL="$DIR_ANALYSE_DATE_HOUR_VERS/$indicator/local"
    export DIR_ANALYSE_DATE_HOUR_VERS_PLAYBUFFERING_BTPNOK1="$DIR_ANALYSE_DATE_HOUR_VERS/$indicator/$DIR_DATE"

    indicator="S_DATE_HOUR_VERS_PLAYBUFFERING_BTPNOK0"
    export DIR_ANALYSE_DATE_HOUR_VERS_PLAYBUFFERING_BTPNOK0_LOCAL="$DIR_ANALYSE_DATE_HOUR_VERS/$indicator/local"
    export DIR_ANALYSE_DATE_HOUR_VERS_PLAYBUFFERING_BTPNOK0="$DIR_ANALYSE_DATE_HOUR_VERS/$indicator/$DIR_DATE"

    indicator="S_DATE_HOUR_VERS_PLAYHALT_HTAPN"
    export DIR_ANALYSE_DATE_HOUR_VERS_PLAYHALT_HTAPN_LOCAL="$DIR_ANALYSE_DATE_HOUR_VERS/$indicator/local"
    export DIR_ANALYSE_DATE_HOUR_VERS_PLAYHALT_HTAPN="$DIR_ANALYSE_DATE_HOUR_VERS/$indicator/$DIR_DATE"


    ### 9.By Dimension: date & version & province & isp & server & loginmode

    indicator="S_DATE_VERS_PROV_ISP_SERV_LGMD_LOGIN_TIME020PN"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_SERV_LGMD_LOGIN_TIME020PN_LOCAL="$DIR_ANALYSE_DATE_VERS_PROV_ISP_SERV_LGMD/$indicator/local"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_SERV_LGMD_LOGIN_TIME020PN="$DIR_ANALYSE_DATE_VERS_PROV_ISP_SERV_LGMD/$indicator/$DIR_DATE"

    indicator="S_DATE_VERS_PROV_ISP_SERV_LGMD_HS_TIME020PN"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_SERV_LGMD_HS_TIME020PN_LOCAL="$DIR_ANALYSE_DATE_VERS_PROV_ISP_SERV_LGMD/$indicator/local"
    export DIR_ANALYSE_DATE_VERS_PROV_ISP_SERV_LGMD_HS_TIME020PN="$DIR_ANALYSE_DATE_VERS_PROV_ISP_SERV_LGMD/$indicator/$DIR_DATE"

    echo "Finished init_analyse ."
}
# END
