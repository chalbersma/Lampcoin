#!/bin/bash

# Config Path
# Manually set echo "PATH=$PATH:/opt/bin" >> /etc/profile.d/profile.sh

# Change Coin Directory Ownership
chown -R coin:coin /var/coin/

# Change /usr/local/*
chown -R root:root /usr/local/*
chmod -R 755 /usr/local/*

# Setup DB Direcotry
mkdir -p /var/coin/db
chown coin:coin /var/coin/db
chmod -R 760 /var/coin/db
mkdir -p /var/coin/db/namecoind
mkdir -p /var/coin/db/litecoind
mkdir -p /var/coin/db/bitcoind
chown coin:coin /var/coin/db/*
chmod -R 760 /var/coin/db/namecoind
chmod -R 760 /var/coin/db/litecoind
chmod -R 760 /var/coin/db/bitcoind



# Setup Permissions in /usr/local/

# Setup for Share
chown -R coin:coin /usr/local/share/coin
chmod -R 775 /usr/local/share/coin

# Setup Systemd Files
chown -R root:root /usr/local/lib/systemd/coin/*d.service
chown -R 777 /usr/local/lib/systemd/coin/*d.service

# /usr/local/bin Change
chown -R root:root /usr/local/bin
chmod -R 755 /usr/local/bin
chmod -R 755 /usr/local/bin/bitcoind
chmod -R 755 /usr/local/bin/litecoind
chmod -R 755 /usr/local/bin/namecoind

# Setup /etc
chown -R root:root /usr/local/etc/
chown -R 666 /usr/local/etc/
chown -R coin:coin /usr/local/etc/*.conf
chown 664 /usr/local/etc/bitcoin.conf
chown 664 /usr/local/etc/litecoin.conf
chown 664 /usr/local/etc/namecoin.conf

# Setup Lib
chown -R root:root /usr/local/lib/
chmod -R 664 /usr/local/lib/
chmod -R 664 /usr/local/lib/systemd/coin/bitcoind.service
chmod -R 664 /usr/local/lib/systemd/coin/litecoind.service
chmod -R 664 /usr/local/lib/systemd/coin/namecoind.service

# Setup share
chown -R coin:coin /usr/local/share/coin/
chmod -R 664 /usr/local/share/coin/

# Setup Scripts
chmod 775 /usr/local/share/coin/legacyScripts/bitcoindstart.sh
chmod 775 /usr/local/share/coin/legacyScripts/bitcoindstop.sh
chmod 775 /usr/local/share/coin/legacyScripts/bitcoind_getinfo.sh
chmod 775 /usr/local/share/coin/legacyScripts/litecoindstart.sh
chmod 775 /usr/local/share/coin/legacyScripts/litecoindstop.sh
chmod 775 /usr/local/share/coin/legacyScripts/litecoind_getinfo.sh
chmod 775 /usr/local/share/coin/legacyScripts/namecoindstart.sh
chmod 775 /usr/local/share/coin/legacyScripts/namecoindstop.sh
chmod 775 /usr/local/share/coin/legacyScripts/namecoind_getinfo.sh
chmod 775 /usr/local/share/coin/setupscripts/firstboot.sh

# Link Systemd Files
ln -s /usr/local/lib/systemd/coin/litecoind.service     /etc/systemd/system/multi-user.target.wants/litecoind.service 
ln -s /usr/local/lib/systemd/coin/namecoind.service     /etc/systemd/system/multi-user.target.wants/namecoind.service
ln -s /usr/local/lib/systemd/coin/bitcoind.service      /etc/systemd/system/multi-user.target.wants/bitcoind.service