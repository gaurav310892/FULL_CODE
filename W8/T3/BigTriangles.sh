source ShorterTriangles.sh > temp1


cat temp1 | while read line
do
	num1=`echo $line | cut -d ":" -f4`
	num2=10
	if (( $(echo "$num1 > $num2" |bc -l) )); then echo $line; fi
done
rm temp1
