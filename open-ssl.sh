#!/bin/bash
file=data.txt
for i in `cat $file`
do
echo $i; openssl s_client -servername $i -connect $i:443 2> /dev/null | openssl x509 -noout -dates ;
done > ssl-2.txt;
