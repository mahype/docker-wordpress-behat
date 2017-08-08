#!/bin/sh

dirname=${PWD##*/}
container_name=${dirname//[-._]/}

echo "Initializing project" >&2
echo "Reading configuration file." >&2
source ./config.cfg

#Remove what we do not need
rm -rf wordpress/plugins
mkdir wordpress/plugins

plugin_dir="wordpress/plugins/$plugin_slug"

#Getting a bit sure that everything is loaded and then run WP CLI
sleep 10

#Installing WordPress
docker exec ${container_name}_wordpress_1 wp core install --url=localhost --title=WPPlugin --admin_user=admin --admin_password=admin --admin_email=info@example.com --allow-root

#Installing plugins from config
for plugin in $required_plugins;
    do docker exec ${container_name}_wordpress_1 wp plugin install $plugin --allow-root && docker exec ${container_name}_wordpress_1 wp plugin activate $plugin --allow-root
done

docker exec ${container_name}_wordpress_1 wp plugin activate woocommerce --allow-root

echo "Checking '$plugin_dir'"

# Adding git repo for plugin
if [ ! -d $plugin_dir ]; then
    echo "========================================" >&2
    echo "Cloning plugin:" >&2
    echo $plugin_repo >&2
    echo "========================================" >&2

    git clone $plugin_repo $plugin_dir --branch $plugin_branch
fi

docker exec ${container_name}_wordpress_1 wp plugin activate $plugin_slug --allow-root