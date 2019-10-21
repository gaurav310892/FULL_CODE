#!/bin/bash

#Using the earlier created script
source IpInfo.sh > /dev/null 2>&1

#using sed to sort
iponly=`echo -e "$addresses" | sed -n '/IP/p'`
echo -e "$iponly"

