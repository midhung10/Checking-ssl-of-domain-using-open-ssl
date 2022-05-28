# Checking-ssl-of-domain-using-open-ssl
This script is used to getting the ssl expiration date of all domains using the open ssl command.

#!/bin/bash

#file named data.txt must contains the list of domain names as one by one vertically.

file=data.txt

for i in `cat $file`

do

echo $i; openssl s_client -servername $i -connect $i:443 2> /dev/null | openssl x509 -noout -dates ;


#The output will be saved to file name ssl-2.txt 
done > ssl-2.txt;
