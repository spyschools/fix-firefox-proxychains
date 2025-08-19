# fix-firefox-proxychains
Firefox proxychains configuration solution Ubuntu Desktop 24.04 LTS Error

-------------------------------------------------------
[proxychains] config file found: /etc/proxychains4.conf
couldnt read configuration file: Permission denied
-------------------------------------------------------

$ ls -l /etc/proxychains4.conf
*Usually it should be like this:
-rw-r--r-- 1 root root 1234 Aug 19 12:00 /etc/proxychains4.conf

$ sudo chmod 644 /etc/proxychains4.conf
$ ls -ld /etc
$ sudo chmod 755 /etc

$ git clone https://github.com/spyschools/fix-firefox-proxychains.git
$ cd fix-firefox-proxychains
$ chmod +x fix-proxychains.sh
$./fix-proxychains.sh
$ cd ~

*after that you can run firefox via proxychains with:
$ proxychains4 -f ~/.proxychains/proxychains.conf firefox
