#!/bin/sh

echo "Reading config...." >&2
source ./config.cfg

chmod +x *.sh

# Adding git repo as submodule
if [ ! -d ./$plugin_dir/ ]; then
    echo "========================================" >&2
    echo "Building Git subtree:" >&2
    echo $plugin_repo >&2
    echo $plugin_dir >&2
    echo "========================================" >&2

    git clone $plugin_repo $plugin_dir
fi