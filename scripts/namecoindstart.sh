#!/bin/bash

# Start Namecoin
# Include manual namecoind declaration as namecoind use ~/.namecoin/bitcoin.conf as a default
su - coin -c '/opt/bin/namecoind -conf=namecoin.conf start'