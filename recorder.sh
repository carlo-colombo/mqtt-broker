#!/bin/bash -eux

docker run -v "${PWD}/owntracks:/owntracks" \
    -p 11883:1883 -p 18883:8883 -p 8083:8083 \
    --rm \
    --name owntracks-recorder \
    --hostname ds415.ww.mens.de \
    -e MQTTHOSTNAME="ds415.ww.mens.de" \
    -e IPLIST="192.168.1.6 192.168.1.82" \
    -e HOSTLIST="mqtt.ww.mens.de ds415.ww.mens.de" \
    -e OTR_USER=owntracks \
    -e OTR_PASS=123456 \
    owntracks/recorderd
