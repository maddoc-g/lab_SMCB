array data[5] = ['data/output_19K_2ns.dat', 'data/output_21K_2ns.dat', \
                    'data/prog_avg_19K.dat', 'data/prog_avg_21K.dat', 'data/prog_avg_E_Cv_19K.dat']

T = 19.0
delta_T = 3.0
k_b = 0.08617718 # meV/K


f(x) = 1 + a*exp(-x/t); a = 1; t = 1
fit [0.5:2] f(x) data[5] u ($1/1000):($4/(k_b*T*T*$6)) via a, t

set xlabel 'Time [ns]'
set ylabel 'h(t)'
set key top right
set title sprintf('h(t) = 1 + a*exp(-t/{/Symbol t}): a = %.2f, {/Symbol t} = %.2f ns', a, t)
p data[5] u ($1/1000):($4/(k_b*T*T*$6)) w l notitle, [0.5:2] f(x) w l lt 2 lc rgb "red" t 'Fit from 0.5ns to 2ns'
