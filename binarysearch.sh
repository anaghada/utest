echo BINARY SEARCH 
echo -------------
echo Enter array limit
read n
echo enter values:
for ((i=0;i<n;i++))
do
 read arr[$i]
done
 for ((i = 0; i<n; i++))
do
       for((j = 0; j<n-i-1; j++))
    do  
       if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
echo "Array in sorted order :"
echo ${arr[*]}
echo "Enter the element to be searched:"
read s
l=0
c=0
u=$(($n-1))
while [ $l -le $u ]
do
mid=$(((( $l+$u ))/2 ))
if [ $s -eq ${arr[$mid]} ]
then
c=1
break
elif [ $s -lt ${arr[$mid]} ]
then
u=$(($mid-1))
else
l=$(($mid+1))
fi
done
if [ $c -eq 1 ]
then
echo “Element $s found at position $(($mid+1))”
else
echo “Element not found”
fi
