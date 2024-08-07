#!/bin/bash

URL="https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=5651327&key=2b380061515891115fb886f15a6982c7a791daaf"
SHA_256="0315b788bb6de18c55addff9043c8a8a0fa7ea4cc4bca98ad8d84ccd02340362"

file_name="module/system/product/priv-app/MIUIEsimLPA/MIUIEsimLPA.apk"
wget -O "$file_name" "$URL" --user-agent="$USER_AGENT"
downloaded_sha256=$(sha256sum "$file_name" | awk '{ print $1 }')

if [ "$downloaded_sha256" != "$SHA_256" ]; then
    echo "SHA-256 checksum verification failed!"
    exit 1
fi