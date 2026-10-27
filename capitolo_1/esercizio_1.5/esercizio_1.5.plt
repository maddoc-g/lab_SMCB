old_units = 'data/old_units_50ps_10-3ps.dat'
new_units = 'data/new_units_0.05ns_10-6ns.dat'

# set xlabel 'Time [ns]'
# set ylabel 'Total energy [meV]'
# set format y '%.5f'
# set yrange [11.74095:11.74115]
# p old_units every 10 u ($1/1000):4 w l t '{/Symbol D}t = 10^{-3} ps', \
#     new_units every 10 u 1:4 w l t '{/Symbol D}t = 10^{-6} ns'

set xlabel 'Time [ns]'
set ylabel 'Chain length [nm]'
set format y '%.2f'
set yrange [2.05:2.40]
p old_units every 10 u ($1/1000):($5/10) w l t '{/Symbol D}t = 10^{-3} ps', \
    new_units every 10 u 1:5 w l t '{/Symbol D}t = 10^{-6} ns'
