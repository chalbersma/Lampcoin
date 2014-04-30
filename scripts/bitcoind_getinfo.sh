#!/bin/bash

# Get Bitcoin Info
VARIABLES=""
su -s /bin/bash -c '/opt/bin/bitcoind $VARIABLES getinfo' coin &