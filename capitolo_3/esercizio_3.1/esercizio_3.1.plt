array data[1] = ['output_300K_binned.dat']

set xlabel 'Gyration radius [Ang]'
set ylabel 'Probability'
p data[1] u 1:2 w boxes