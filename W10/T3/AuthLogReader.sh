#!/bin/bash

#cat /var/log/auth.log | awk -F ' ' '{print $1,$2,$3 "\n" $5 "\n" "\t" $6" "$7" "$8" "$9" "$10" "$11" "$12" "$13" "$14" "$15}'


cat auth.log | awk -F ' ' '{print $1,$2,$3 "\n" $5 "\n" "\t" $6" "$7" "$8" "$9" "$10" "$11" "$12" "$13" "$14" "$15 "\n"}'
