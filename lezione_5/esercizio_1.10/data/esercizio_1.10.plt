array files[2] = ['output_1.dat', 'output_2.dat']
# array E_tot[2] = [11.740818, 11.947426]
array E_tot[2] = [11.210878, 11.393443]
k_b = 8.617333262e-2
N = 12

# Compute the temperature using Kac's theorem, thus using TOTAL ENERGIES
fit a*x 'recursion_1.dat' via a 
fit b*x 'recursion_2.dat' via b 
T = (E_tot[2] - E_tot[1])/(k_b * log(b/a))
print T

set xlabel 'Event number'
set ylabel 'Recursion time [ps]'
# p 'recursion_1.dat' w lp pt 7 ps 1.5 t 'E_{tot} = 11.74 meV', 'recursion_2.dat' w lp pt 7 ps 1.5 t 'E_{tot} = 11.95 meV', a*x w l, b*x w l


# Compute the temperatures with the equipartition theorem, thus using KINETIC ENERGIES
set print $ENERGIES
do for [i=1:2] {
    stats files[i] using 2 nooutput
    print STATS_mean
}
unset print

T_1 = ($ENERGIES[1]*2)/(3*N*k_b)
print T_1
T_2 = ($ENERGIES[2]*2)/(3*N*k_b)
print T_2
