#!/bin/sh

echo "Reading config...." >&2
source ./config.cfg

#git rm ./$plugin_dir/
rm -rf $plugin_dir

echo "Cleaned up project"