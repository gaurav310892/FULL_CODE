#source Triangles.sh > /dev/null 2>&1
source Triangles.sh | sed "s/The area of triangle with base/Base/g ; s/and height/Height/g ; s/is/Area/g" 
#echo $line
