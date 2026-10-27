array data[6] = ['data/output_10-3ps.dat', 'data/output_10-4ps.dat', 'data/output_10-5ps.dat', 'data/output_10-6ps.dat', 'data/output_10-7ps.dat', 'data/output_10-8ps.dat']
array timesteps[6] = [-3, -4, -5, -6, -7, -8]
rel_err = 1e-5
tot_energy = 11.740818

set xlabel 'Time [ps]'
set ylabel 'Total energy [meV]'
set yrange [11.7406:11.7411]
set key top left 
set key font "Arial,18"
set key Left reverse
p for [i=5:6] data[i] using 1:4 w l t sprintf('{/Symbol D}t = 10^{%d} ps', timesteps[i]), \
    tot_energy w l dt 2 lc rgb "red" t 'Initial energy {\261} 10^{-5}', \
    tot_energy + tot_energy*rel_err w l lc rgb "red" notitle, \
    tot_energy - tot_energy*rel_err w l lc rgb "red" notitle