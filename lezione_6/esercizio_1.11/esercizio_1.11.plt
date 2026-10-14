k_b = 8.617333262e-2
N = 12

# Compute the temperatures with the equipartition theorem, thus using KINETIC ENERGIES
stats 'output_1.dat' using 2 nooutput
T = (STATS_mean*2)/(3*N*k_b)
print T
