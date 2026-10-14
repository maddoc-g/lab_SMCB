# ---- user input ----
array files[6] = ['Verlet_200ps_10-1ps.dat', 'Verlet_200ps_10-2ps.dat', 'Verlet_200ps_10-3ps.dat', 'Verlet_200ps_10-4ps.dat', 'Verlet_200ps_10-5ps.dat', 'Verlet_200ps_10-6ps.dat']
array timesteps[6]    = [0.1, 0.01, 0.001, 0.0001, 0.00001, 0.000001]

# ---- compute amplitudes ----
set print $AMP
do for [i=1:6] {
    stats files[i] using 4 nooutput
    print sprintf('%g %.10g', timesteps[i], (STATS_max - STATS_min)/2.0)
}
unset print

# ---- plot ----
set logscale xy
set format x '10^{%L}'
set xlabel 'Timestep [ps]'
set ylabel 'Energy oscillation amplitude [meV]'
unset key
plot $AMP using 1:2 with linespoints pt 7 ps 1.5

# Fit the power law in log space
f(x) = b*x + c
fit f(x) $AMP using (log10($1)):(log10($2)) via b,c

A = 10**c
print sprintf('exponent b = %g,  prefactor A = %g', b, A)

# Fit the power law
g(x) = A*x**b
A = 1; b = 1                       # starting guesses
fit g(x) $AMP using 1:2 via A,b
print sprintf('exponent b = %g,  prefactor A = %g', b, A)
#    EOF
