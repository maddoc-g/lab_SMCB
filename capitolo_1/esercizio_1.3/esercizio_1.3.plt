# ---- user input ----
array files[7] = ['data/Verlet_200ps_0.2ps.dat', 'data/Verlet_200ps_10-1ps.dat', 'data/Verlet_200ps_10-2ps.dat', 'data/Verlet_200ps_10-3ps.dat', 'data/Verlet_200ps_10-4ps.dat', 'data/Verlet_200ps_10-5ps.dat', 'data/Verlet_200ps_10-6ps.dat']
array timesteps[7] = [0.2, 0.1, 0.01, 0.001, 0.0001, 0.00001, 0.000001]

# ---- compute amplitudes ----
set print $AMP
do for [i=1:7] {
    stats files[i] using 4 nooutput
    print sprintf('%g %.10g', timesteps[i], (STATS_max - STATS_min))
}
unset print

# # Fit the power law in log space
# f(x) = a*x + b
# fit f(x) $AMP every ::0::5 using (log10($1)):(log10($2)) via a,b
# print sprintf('exponent b = %g', b)
# h(x) = 10**b * x**a

# Fit the power law
g(x) = A*x**B
A = 1; B = 1                      
fit g(x) $AMP using 1:2 via A,B
print sprintf('exponent B = %g', B)


# ---- plot ----
set logscale xy
set format x '10^{%L}'
set format y '10^{%L}'
set xlabel 'Timestep [ps]'
set ylabel 'Energy oscillation amplitude [meV]'
p $AMP u 1:2 w lp pt 7 ps 1.5 notitle, \
    g(x) w l t sprintf('Power law fit, exp = %.2g', B) 
    # h(x) w l t sprintf('Linear fit, m = %.2g', a), \

