#!/bin/sh

echo "Starting development environment!"

docker-compose up -d

# Initializing project
if [ ! -d ./wordpress/plugins/ ]; then
    chmod +x *.sh & ./init.sh
fi

