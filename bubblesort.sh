echo BUBBLE SORT
echo -----------
echo enter the limit:
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
       if [ ${arr[j+1]} -gt ${arr[$((j))]} ]
        then
            
            temp=${arr[j+1]}
            arr[$j+1]=${arr[$((j))]}  
            arr[$((j))]=$temp
       fi
    done
done

echo "Array in sorted order :"
echo ${arr[*]}
 
