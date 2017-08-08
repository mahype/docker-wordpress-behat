#!/bin/sh

echo "Reading config...." >&2
source ./config.cfg

plugin_dir="wordpress/plugins/"
rm -rf $plugin_dir

mkdir $plugin_dir

echo "Cleaned up project!"