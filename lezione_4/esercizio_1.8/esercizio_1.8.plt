a = 1
b = 1
set xlabel 'Time [ps]'
set ylabel 'Chain lenght [Ang]'
p 'unperturbed.dat' u 1:5 w l t 'Unperturbed', 'perturbed_0.3.dat' u 1:5 w l t 'Perturbed'
fit [0:15] a*exp(b*x) 'combined_data.dat' u 1:($5 - $10) via a,b 