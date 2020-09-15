#!/bin/bash

docker run -id \
    -p 25565:25565 \
    -e JAVA_Xmx=2500m \
    -e JAVA_OPTS=-Dfml.queryResult=confirm \
    -v /path/to/mc_resources/usercache.json:/mc_server/usercache.json \
    -v /path/to/mc_resources/usernamecache.json:/mc_server/usernamecache.json \
    -v /path/to/mc_resources/server.properties:/mc_server/server.properties \
    -v /path/to/mc_resources/mods:/mc_server/mods \
    -v /path/to/mc_resources/plugins:/mc_server/plugins \
    -v /path/to/mc_resources/world:/mc_server/world \
    -v /path/to/mc_resources/whitelist.json:/mc_server/whitelist.json \
    -v /path/to/mc_resources/banned-ips.json:/mc_server/banned-ips.json \
    -v /path/to/mc_resources/banned-players.json:/mc_server/banned-players.json \
    --name mc_server \
    clemon1015/mc_server_1_7_10:openjdk8
