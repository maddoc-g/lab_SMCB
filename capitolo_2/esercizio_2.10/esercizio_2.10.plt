array data[4] = ['data/unfolding_100K.dat', 'data/unfolding_130K.dat', 'data/folding_100K_to_10K.dat', 'data/folding_130K_to_10K.dat']

unfolding_time = 200

set xlabel 'Time [ps]'
set ylabel 'q'
set arrow from 200, graph 0 to 200, graph 1 nohead dt 2 lc rgb 'black'
set title 'Unfolding @ 100K and refolding @ 10K'
p data[1] u 1:7 w l lc rgb 'red' notitle, data[3] u ($1+unfolding_time):7 w l lc rgb 'red' notitle
  
# p data[2] u 1:7 w l lc rgb 'red' notitle, data[4] u ($1+unfolding_time):7 w l lc rgb 'red' t '130K' 

# set xlabel 'Time [ps]'
# set ylabel 'd_{RMSD} [Ang]'
# p data[1] u 1:8 w l lc rgb 'red' notitle, data[3] u ($1+unfolding_time):8 w l lc rgb 'red' t '100K', \
#   data[2] u 1:8 w l lc rgb 'blue' notitle, data[4] u ($1+unfolding_time):8 w l lc rgb 'blue' t '130K', 