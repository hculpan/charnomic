#!/bin/sh

cd /var/www/html
rm -rf *
cp /root/site.zip /var/www/html
unzip site.zip
exit
