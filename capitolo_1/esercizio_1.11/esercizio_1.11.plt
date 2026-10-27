T_recursion = 14.68
k_b = 8.617333262e-2
N = 12

# Compute the temperatures with the equipartition theorem
stats 'output_1.dat' using 2 nooutput
T = (STATS_mean*2)/(3*N*k_b)
print sprintf('Equipartition Theorem: T = %.2f K', T)
print sprintf('Kac''s Theorem: T = %.2f K', T_recursion)

