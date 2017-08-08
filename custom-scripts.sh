#!/bin/sh

dirname=${PWD##*/}
container_name=${dirname//[-._]/}

docker exec ${container_name}_wordpress_1 wp import wp-content/plugins/woocommerce/dummy-data/dummy-data.xml --authors=create --allow-root