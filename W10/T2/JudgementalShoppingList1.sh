#!/bin/bash
cat shopping.csv | awk -F "," '{print $1}' > prd.txt
echo "Your shopping list is as follows:"
echo -e 'Item \t \t |Quantity \t \t |Price \t |Total \t | Comment'
echo -e ' \t \t | \t \t \t | \t \t |  \t \t |'
echo -e '------------------------------------------------------------------------------------------'
awk 'BEGIN {
FS=","
}
{
printf "%-16s | %-21s | %-13s | %-13s | %s\n" ,$1,$2,"$"$3, "$"$2*$3 , $1"1" 
}' shopping.csv
Qaunt_t=`awk -F',' '{sum+=$2;} END{print sum;}' shopping.csv`
Price_t=`awk -F',' '{sum+=$3;} END{print " $"sum;}' shopping.csv`
tot_t=`awk -F',' '{sum+=$3*$2;} END{print " $"sum;}' shopping.csv`
echo -e "Total \t \t |$Qaunt_t \t \t \t |$Price_t \t |$tot_t"
