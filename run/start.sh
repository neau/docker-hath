#!/bin/sh

# Create client_login if it doesn't exist yet
if [ ! -f /hath/data/client_login ]; then
	printf "${HATH_CLIENT_ID}-${HATH_CLIENT_KEY}" >> /hath/data/client_login
fi

cp /opt/hath/HentaiAtHome.jar /opt/hath/h.jar
exec java -jar /opt/hath/h.jar \
    --cache-dir=/hath/cache               \
    --data-dir=/hath/data                 \
    --download-dir=/hath/download         \
    --log-dir=/hath/log                   \
    --temp-dir=/hath/tmp

