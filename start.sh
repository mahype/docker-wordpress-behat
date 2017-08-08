#!/bin/sh

echo "Starting develop environment!"

docker-compose up -d

# Adding git repo for plugin
if [ ! -d wordpress ]; then
    chmod +x *.sh
    ./init.sh
fi

