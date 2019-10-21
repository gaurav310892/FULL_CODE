#set -x
area ()
{
base=1
height=1
while [ $base -lt 101 ]
do
height=1
	while [ $height -lt 101 ]
	do
		#area=`expr $base \* $height / 2 | bc`
		area=`echo "scale=1;$base*$height/2"|bc`
		echo "The area of triangle with base: $base and height: $height is: $area"
		export line=`echo "The area of triangle with base: $base and height: $height is: $area"`
		height=`expr $height + 1`
	done
base=`expr $base + 1`
done
}

area
