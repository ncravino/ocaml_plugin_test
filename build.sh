#!/usr/bin/env bash
cd pluginloader
./build_main.sh
cp main.native ../
cd ..
cd plugin_a
./build_plugin.sh
cp plugin_a.cmxs ../
cd ..
./main.native
