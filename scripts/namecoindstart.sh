#!/bin/bash

# Start Namecoin
# Include manual namecoind declaration as namecoind use ~/.namecoin/bitcoin.conf as a default
VARIABLES="-conf=/home/coin/namecoin.conf"
su -s /bin/bash -c '/opt/bin/namecoind $VARIABLES' coin &