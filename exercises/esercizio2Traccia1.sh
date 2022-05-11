#!/bin/bash

n1=0
m1=0
NF=0
min=1000000
tmp=0

file=$1
# numero colonne minimo
n1=$(cat $1 | awk -F "," 'BEGIN{min = 1000} {if(min>NF && NF != 0) min=NF} END {print
min}')
echo "il numero minimo di colonne ̈ $n1"
# numero colonne massimo
NF=$(cat $1 | awk -F "," '{print NF}' $1| awk '{if($1>max) max = $1} END {print max}')
echo "il numero massimo di colonne  ̈ $NF"

for (( c=1; c<=$NF; c++ ))
do
    tmp=$(awk -v a="$c" -F "," '{print $a}' $1| wc -w)
    if [ $tmp -lt $min ]
    then
        min=$tmp
    fi
done

m1=min

file=$(echo "$1" | sed 's/.csv/-reduced.csv/g')
touch $file

awk -F ", " -v columns=$m1 '{
        for (i = 1; i < last; i++)
        {
            printf("%s, ", $i)
        }
        print($last ", ")
}' $1 | awk -v rows=$m1'NR < rows {print}' > $file