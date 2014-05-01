#!/bin/bash

# Get Litecoin Info
VARIABLES=""
su -s /bin/bash -c '/opt/bin/litecoind $VARIABLES getinfo' coin &