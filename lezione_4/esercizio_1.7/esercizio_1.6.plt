set xlabel 'Time [ps]'
set ylabel 'Chain lenght [Ang]'
set yrange [20.5:24.5]
p 'unperturbed.dat' u 1:5 w l t 'Unperturbed', 'perturbed_0.1.dat' u 1:5 w l t '{/Symbol d} = 0.1 Ang', 'perturbed_0.2.dat' u 1:5 w l t '{/Symbol d} = 0.2 Ang', 'perturbed_0.3.dat' u 1:5 w l t '{/Symbol d} = 0.3 Ang'
