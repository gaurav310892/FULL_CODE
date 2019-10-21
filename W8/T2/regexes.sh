
echo "All sed Statements"
grep -rw "sed" /home/vagrant/nisarahmed23/
echo "---" ;echo "";
echo "All lines that starts with the letter m"
grep -r "^M" /home/vagrant/nisarahmed23/

echo "---" ;echo "";
echo "All lines that contain three digit numbers"
grep -rE '[0-9]{3}' /home/vagrant/nisarahmed23/

echo "---" ;echo "";
echo "All lines that start with a vowel"
grep -rE '^[aeiou]' /home/vagrant/nisarahmed23/

echo "---" ;echo "";
echo "lines that contain loops"
grep -rE '^if|^while|^for' /home/vagrant/nisarahmed23/

echo "---" ;echo "";
echo "echo statements with at least three words"
grep -rw "echo" /home/vagrant/nisarahmed23/ > tempcheck.txt
cat tempcheck.txt | while read line
do
	l1=`echo $line | cut -d ":" -f2`
	l2=`echo $l1 | wc -w` 
	if [ $l2 -gt 4 ]
	then
		echo "$line"
	fi
done
rm tempcheck.txt
	
