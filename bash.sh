#!/bin/bash

# Functions
check_and_source_env() {
    if [ -z "$registries" ]; then
        if [ ! -f ./.env ]; then
            wget -c https://raw.githubusercontent.com/ArmanTaheriGhaleTaki/fastDocker403unlocker/main/.env
        fi
        source .env
    fi
}

function download() {
    echo analyzing $2
    timeout $timeout skopeo copy docker://$2/$1 dir:/tmp/$2
}

function download_speed() {
    du -s /tmp/$1 >>database
    rm -fr /tmp/$1
}

# Execute the functions
if [ $# -lt 1 ]; then
    echo -e "Error: No argument provided.\n\n"
    echo "You need to give the image name and it's tag as argument [image]:tag like this fastdocker403unlocker nginx:alpine"
    exit 1 # Exit with a non-zero status to indicate an error
fi

check_and_source_env
touch database

for i in $registries; do
    download $1 $i
    download_speed $i
done

echo '*********************'
echo best docker registry for $1 is $(sort -rn database | head -1 | cut -d'/' -f3)
echo '*********************'

rm database
