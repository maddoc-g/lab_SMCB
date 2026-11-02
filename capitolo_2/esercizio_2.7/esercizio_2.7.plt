array data_100K[3] = ['data/output_100K_g0.5.dat', 'data/output_100K_g1.dat', 'data/output_100K_g2.dat']
array data_300K[3] = ['data/output_300K_g0.5.dat', 'data/output_300K_g1.dat', 'data/output_300K_g2.dat']
T_1 = 100.0
T_2 = 300.0

# set xlabel 'Time [ps]'
# set ylabel 'T_{m} - T [K]'
# set yrange [-80:90]
# set key top left Left font "Arial,24"
# p data_100K[1] u 1:($6-T_1) w l t 'T = 100K, {/Symbol g} = 0.5', \
#   data_100K[2] u 1:($6-T_1) w l t 'T = 100K, {/Symbol g} = 1', \
#   data_100K[3] u 1:($6-T_1) w l t 'T = 100K, {/Symbol g} = 2', \
#   0. w l dt 2 lc rgb "red" notitle

set xlabel 'Time [ps]'
set ylabel 'T_{m} - T [K]'
set yrange [-300:200]
set key top left Left font "Arial,24"
p data_300K[1] u 1:($6-T_2) w l t 'T = 300K, {/Symbol g} = 0.5', \
  data_300K[2] u 1:($6-T_2) w l t 'T = 300K, {/Symbol g} = 1', \
  data_300K[3] u 1:($6-T_2) w l t 'T = 300K, {/Symbol g} = 2', \
  0. w l dt 2 lc rgb "red" notitle