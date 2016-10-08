#!/bin/sh

ENCRYPT='./json/encrypt.json'

if [ ! -f ${ENCRYPT} ]; then
    echo "{ \"encrypt\": \"$( openssl rand -base64 16 )\" }" >${ENCRYPT}
else
    echo "${ENCRYPT} already exists!"
fi

exit 0

