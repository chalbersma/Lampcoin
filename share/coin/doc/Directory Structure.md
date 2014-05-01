# New Directory Buildout

Binaries
<coin>d 
    |_ /usr/local/bin/ _

Config Files    
<coin>.conf
    |_ /usr/local/etc _
    
Legacy Scripts
<coin>*.sh
    |_ /usr/local/share/coin/legacyScripts _
    
SystemD Service Files
<coin>d.service
    |_ /usr/local/lib/systemd/coin/ _
        + ln -s /etc/systemd/system/multi-user.target.wants
        
Documentation
*.md
    |_ /usr/local/share/coin/doc/ _
    
DataDirectory
<Generated>
    |_ /var/coin/db/<coin>d _
    
Wallet Directory
<wallet.dat Files>
    |_ /var/coin/<coin>.dat

    