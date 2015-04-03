#!/bin/sh
clear

OPTS=-use-network=false
MXMLC=/usr/local/flex_sdk_3/bin/mxmlc

mxmlFiles=`find -name '*.mxml' -print`

for mxml in ${mxmlFiles}; do
        echo "building $mxml"
        ($MXMLC $OPTS ${mxml})
done

