#!/bin/bash
#
# NAME: function_mailerror.sh
#
# DESC: 以邮件形式发送错误信息
#
# AUTH: wangzg

function mail_error()
{
    echo "Starting mail_error ..."

    if [ $# -ne 3 ]
    then
        echo "Usage: mail_error <error_log> <script_name> <date_id>"
        return 1
    fi

    local arg_date=$1
    local arg_elog=$2
    local arg_subs=$3
    local alert_level="ERROR-client_qos-MR: $(date)"
    local host_ip=$(/sbin/ifconfig |
                   grep 'inet addr' |
                   awk '{print $1$2}' |
                   awk -F: '{print $2}' |
                   head -1)
    local host_name=$(hostname -s)
    local email_subject="$alert_level"
    local email_details="\ndate=$arg_date
                         \nscript=$arg_subs
                         \nhost_ip=$host_ip
                         \nhost_name=$host_name
                         \nuser_name=$USER"

    if [ -s $arg_elog ]
    then
        echo "---------------------------------" >>$arg_elog
        echo -e "$email_details"                 >>$arg_elog
        echo "---------------------------------" >>$arg_elog
        cat $arg_elog |
        newmail -s "$email_subject" wangzg@funshion.com \
                                    niewf@funshion.com
    fi  

    echo "Finished mail_error ."
}
# END
