#!/bin/bash

#cat /var/log/auth.log | awk -F ' ' '{print $1,$2,$3 "\n" $5 "\n" "\t" $6" "$7" "$8" "$9" "$10" "$11" "$12" "$13" "$14" "$15}'

curr_month=`date | cut -d " " -f2`
#cat auth.log | awk -F ' ' '{print $1,$2,$3 "\n" $5 "\n" "\t" $6" "$7" "$8" "$9" "$10" "$11" "$12" "$13" "$14" "$15}'
grep $curr_month auth.log | grep -e root | awk -F ' ' '{print $1,$2,$3 "\n" $5 "\n" "\t" $6" "$7" "$8" "$9" "$10" "$11" "$12" "$13" "$14" "$15 "\n"}'
