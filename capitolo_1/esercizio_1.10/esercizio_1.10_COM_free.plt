array files_COM_free[4] = ['data_COM_free/output_1.dat', 'data_COM_free/output_2.dat', 'data_COM_free/recursion_1.dat', 'data_COM_free/recursion_2.dat']
array E_tot_COM_free[2] = [11.210878, 11.393443]
k_b = 8.617333262e-2
N = 12

# Compute the temperature using Kac's theorem, thus using TOTAL ENERGIES
fit a*x files_COM_free[3] via a 
fit b*x files_COM_free[4] via b 
T = (E_tot_COM_free[2] - E_tot_COM_free[1])/(k_b * log(b/a))
print T

set xlabel 'Event number'
set ylabel 'Recursion time [ps]'
set title sprintf('T = %.2f K', T)
p files_COM_free[3] w p pt 7 ps 1.5 t 'E_{tot} = 11.21 meV', files_COM_free[4] w p pt 7 ps 1.5 t 'E_{tot} = 11.39 meV', a*x w l notitle, b*x w l notitle


# Compute the temperatures with the equipartition theorem, thus using KINETIC ENERGIES
set print $ENERGIES
do for [i=1:2] {
    stats files_COM_free[i] using 2 nooutput
    print STATS_mean
}
unset print

T_1 = ($ENERGIES[1]*2)/(3*N*k_b)
print T_1
T_2 = ($ENERGIES[2]*2)/(3*N*k_b)
print T_2
