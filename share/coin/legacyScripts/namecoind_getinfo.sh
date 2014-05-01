#!/bin/bash

# Get Namecoind Info
VARIABLES=""
su -s /bin/bash -c '/opt/bin/namecoind $VARIABLES getinfo' coin &