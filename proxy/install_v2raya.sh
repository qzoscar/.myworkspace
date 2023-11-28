#!/usr/bin/env bash

install_v2raya() {
   docker run -d \
    --restart=always \
    --privileged \
    --network=host \
    --name v2raya \
    -e V2RAYA_LOG_FILE=/tmp/v2raya.log \
    -e V2RAYA_V2RAY_BIN=/usr/local/bin/v2ray \
    -e V2RAYA_NFTABLES_SUPPORT=off \
    -v /lib/modules:/lib/modules:ro \
    -v /etc/resolv.conf:/etc/resolv.conf \
    -v /etc/v2raya:/etc/v2raya \
    mzz2017/v2raya 
}

install_v2raya