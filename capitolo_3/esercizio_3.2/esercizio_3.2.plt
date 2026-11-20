array data[2] = ['data/averages_200K.dat', 'data/averages_300K.dat']  

# set xlabel '{/Symbol g}'
# set ylabel 'Total trials'
# set xrange [0:0.3]
# p data[1] u 1:2 w lp pt 7 ps 1 lc rgb "black" notitle

set xlabel '{/Symbol g}'
set ylabel 'Acceptance rate'
set xrange [0:0.3]
p data[1] u 1:3 w lp pt 7 ps 1 lc rgb "black" notitle
