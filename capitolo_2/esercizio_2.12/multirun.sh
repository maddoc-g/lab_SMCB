#!/bin/bash

./md.x parameters.6 | awk '{print $1,$7}' > tmp.dat

for i in {2..10}; do
    ./md.x parameters.6 > out_$i.dat 
    paste tmp.dat out_$i.dat > tmp2.dat
    awk '{print $1,$2+$9}' tmp2.dat > tmp.dat
done

awk '{print $1,$2/10}' tmp.dat > avg_q.dat

rm out_* tmp.dat tmp2.dat
