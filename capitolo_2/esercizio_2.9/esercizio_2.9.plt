T = 300.0

set xlabel 'Time [ps]'
set ylabel 'T_{m} - T [K]'
set yrange [-250:60]
p 'avg_temp.dat' u 1:($2-T) w l t 'T = 300K, {/Symbol g} = 1', \
    0. w l dt 2 lc rgb "red" notitle

# set xlabel 'Time [ps]'
# set ylabel 'Chain length [Ang]'
# set yrange [0:110]
# p 'avg_length.dat' u 1:2 w l t 'T = 300K, {/Symbol g} = 1', \
#     0. w l dt 2 lc rgb "red" notitle