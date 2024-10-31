#!/bin/bash

OUTPUT_PATH="/home/ubuntu"

awk -F":" '{print $1 ";" $3}' /etc/passwd >> $OUTPUT_PATH/exercise5_`date +"%Y%m%d"`.log

find $OUTPUT_PATH -name "exercise5*.log" -mtime +2 -exec rm {} \;
