array no_shift[3] = ['cutoff_no_shift/out_cutoff_1.5.dat', 'cutoff_no_shift/out_cutoff_2.0.dat', 'cutoff_no_shift/out_cutoff_2.5.dat']
array shift[3] = ['cutoff_shift/out_cutoff_shift_1.5.dat', 'cutoff_shift/out_cutoff_shift_2.0.dat', 'cutoff_shift/out_cutoff_shift_2.5.dat']
no_cutoff = 'no_cutoff/out_no_cutoff.dat'

set xlabel 'Time [ps]'
set ylabel 'Total energy [meV]'
set key top right
set yrange [501.07:501.14]
p no_cutoff u 1:4 w l t 'No cutoff', no_shift[1] u 1:4 w l t 'Cutoff, no shift', shift[1] u 1:4 w l t 'Cutoff, shifted' 
# p no_cutoff u 1:4 w l t 'No cutoff', no_shift[2] u 1:4 w l t 'Cutoff, no shift', shift[2] u 1:4 w l t 'Cutoff, shifted'
# p no_cutoff u 1:4 w l t 'No cutoff', no_shift[3] u 1:4 w l t 'Cutoff, no shift', shift[3] u 1:4 w l t 'Cutoff, shifted' 

# array runtimes[3] = [26, 27, 28]
# array cutoffs[3] = [1.5, 2.0, 2.5]

# set xlabel 'Cutoff distance [Ang]'
# set ylabel 'Normalized runtime'
# unset key
# p runtimes using (cutoffs[$1]):(runtimes[$1]/47.0) w p pt 7 ps 1.5

