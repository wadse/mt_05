#!/bin/sh
rm script-out.txt

lens="10 20 50 100 200 500 1000 2000 5000"

for i in {1..15}
do 
    for j in $lens
    do 
	k=$(./identify -a $i -b $i -n $j -t ../data/train_news/ | ./grade)
	m=$(./identify -a  1 -b $i -n $j -t ../data/train_news/ | ./grade)
	echo "$i, $j, $k, $m" >> script-out.txt
    done
done




