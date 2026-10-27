array data[4] = ['data/unperturbed.dat', 'data/perturbed_0.1.dat', 'data/perturbed_0.2.dat', 'data/perturbed_0.3.dat']

set xlabel 'Time [ps]'
set ylabel 'Chain lenght [Ang]'
set yrange [20.5:24.5]
p data[0] u 1:5 w l t 'Unperturbed', data[1] u 1:5 w l t '{/Symbol d} = 0.1 Ang', data[2] u 1:5 w l t '{/Symbol d} = 0.2 Ang', data[3] u 1:5 w l t '{/Symbol d} = 0.3 Ang'
