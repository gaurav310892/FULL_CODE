#!/bin/bash
source JudgementalShoppingList1.sh > sample
num2=5
num3=3
cat prd.txt | while read line
do
	mess1=""
	quant=`grep "$line" sample | cut -d '|' -f2`
	mess=`grep "$line" sample | cut -d '|' -f5`
	tot=`grep "$line" sample | cut -d '|' -f4 | cut -d '$' -f2`

	if [ $quant -gt 5 ]
	then
		mess1=`echo "Do you really need that many?"`
	fi
	
	if (( $(echo "$tot > $num2" |bc -l) )); then
		if [ $quant -le 5 ]; then
		mess1=`echo "That’s a bit expensive! Are you sure?"`
		fi
	fi
	
	if (( $(echo "$tot < $num3" |bc -l) )); then
                mess1=`echo "Such a cheapskate!"`
        fi

sed -i "s/${mess}/${mess1}/g" sample
	
done


cat sample
rm prd.txt sample
