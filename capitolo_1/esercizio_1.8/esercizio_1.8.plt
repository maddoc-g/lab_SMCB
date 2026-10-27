array data[3] = ['data/unperturbed.dat', 'data/perturbed_0.3.dat', 'data/combined_data.dat'] 

a = 1
b = 1
fit [0:15] a*exp(b*x) data[3] u 1:($5 - $10) via a,b 

set xlabel 'Time [ps]'
set ylabel 'Chain lenght [Ang]'
set title sprintf('Lyapunov exponent = %.2f ps^{-1}', b)
p data[1] u 1:5 w l t 'Unperturbed', data[2] u 1:5 w l t 'Perturbed'