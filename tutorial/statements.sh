#!/bin/bash

range=$1
comp=$2

if [ $range -eq $comp ] || [ $range -gt $comp ]
then
    echo "The condition is true"
else
    echo "Try again"
fi

while [ $range -lt 10 ] #si puo usare anche until ed e` la stessa sintassi
do
    echo "$range"
    range=$(($range+1))
done

for i in {1..20} # {start..ending..increment}
do
    echo $i 
done