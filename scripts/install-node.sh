#!/bin/bash

set -e

printf "\n[-] Installing Node ${NODE_VERSION}...\n\n"

NODE_DIST=node-v${NODE_VERSION}-linux-x64

cd /tmp
curl -O -L http://nodejs.org/dist/v${NODE_VERSION}/${NODE_DIST}.tar.gz
tar xvzf ${NODE_DIST}.tar.gz
rm ${NODE_DIST}.tar.gz
rm -rf /opt/nodejs
mv ${NODE_DIST} /opt/nodejs

ln -sf /opt/nodejs/bin/node /usr/local/bin/node
ln -sf /opt/nodejs/bin/npm /usr/local/bin/npm