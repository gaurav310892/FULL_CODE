#!/bin/bash

echo "Your shopping list is as follows:"
awk 'BEGIN {
	FS=","
}
/^[aeiou]/ {
	print "starts with a vowel: " $1
}
/^[o]/ {
	print "starts with an o: " $1
}' shopping.csv

cat shopping.csv | awk -F ',' '$3 ~ /^[0-9]+$/ { print "Whole Number Price: "$1 }'

cat shopping.csv | awk -F ' ' '{print $1}' | awk -F ',' '!$2 {print "has more than one word in the item: " $1} '
