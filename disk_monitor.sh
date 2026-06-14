#!/bin/bash

set -euo pipefail
#created Directory 
mkdir -p "$HOME/system.log"

# if nothing in $1 then number is 80
THRESHOLD=${1:-80}
counter=0
iterations=10
LOG="$HOME/system.log/procent_disk_$(date +%Y-%m-%d).log"

# we will need save later and its help us
log(){
    echo "[$(date +%H:%M:%S)] [$1] $2" | tee -a $LOG
}

while [ $counter -lt $iterations ]; do
    # for all column 5 and we deleted sign %
    for i in $(df -h | awk 'NR>1 {print $5}' | tr -d '%'); do
        if [ $i -gt $THRESHOLD ]; then
            log "WARNING" "Disk usage is $i%"
        else
            log "INFO" "Everything is okay — $i%"
        fi
    done
    counter=$(( counter + 1 ))
    sleep 1
done