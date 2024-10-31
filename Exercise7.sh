#!/bin/bash

IP_FILE="/home/ubuntu/ip_list.txt"
LOG_FILE="/home/ubuntu/logs/ping_results_$(date +%Y-%m-%d).log"
HOSTNAME=$(hostname)

echo "Ping results for $HOSTNAME on $(date)" >> "$LOG_FILE"

while IFS= read -r ip; do
    ping -c 1 "$ip" &> /dev/null
    if [ $? -eq 0 ]; then
        echo "$ip is reachable" >> "$LOG_FILE"
    else
        echo "$ip is not reachable" >> "$LOG_FILE"
    fi
done < "$IP_FILE"
