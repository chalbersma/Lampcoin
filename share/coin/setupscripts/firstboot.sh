#!/bin/bash

# Config Path
echo "PATH=$PATH:/opt/bin" >> /etc/profile.d/profile.sh

# Change Coin Directory Ownership
chown -R coin:coin /var/coin/

# Setup DB Direcotry
chmod 760 /var/coin/db
chmod 760 /var/coin/db
chmod 760 /var/coin/db

# Link Systemd Files
ln -s /usr/local/lib/systemd/coin/litecoind.service     /etc/systemd/system/multi-user.target.wants/litecoind.service 
ln -s /usr/local/lib/systemd/coin/namecoind.service     /etc/systemd/system/multi-user.target.wants/namecoind.service
ln -s /usr/local/lib/systemd/coin/bitcoind.service      /etc/systemd/system/multi-user.target.wants/bitcoind.service