#!/bin/bash

seed=4567

./md.x parameters.5 $seed | awk '{print $1,$6}' > tmp.dat

for i in {2..10}; do
    echo "Seed: $(( seed + i ))"
    ./md.x parameters.5 $(( seed + i )) > out_$i.dat 
    paste tmp.dat out_$i.dat > tmp2.dat
    awk '{print $1,$2+$8}' tmp2.dat > tmp.dat
done

awk '{print $1,$2/10}' tmp.dat > avg_temp.dat

rm out_* tmp.dat tmp2.dat
