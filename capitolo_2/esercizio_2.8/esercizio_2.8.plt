array data[3] = ['data/output_0K_g1.dat', 'data/output_0K_g2.dat', 'data/output_0K_g3.dat']
f(x) = a*exp(-x/b)
a = 1
b = 1

# fit [0:100] f(x) data[1] u 1:6 via a,b
# set xlabel 'Time [ps]'
# set ylabel 'T_{m} [K]'
# set key top right
# set xrange [0:100]
# set title sprintf('T_{m} = a exp(-t/b), a = %.2f, b = %.2f', a, b)
# p data[1] u 1:6 w l t 'T = 0K, {/Symbol g} = 1', \
#   [0:100] f(x) w l lc rgb "red" t 'Fit'

# fit [0:100] f(x) data[2] u 1:6 via a,b
# set xlabel 'Time [ps]'
# set ylabel 'T_{m} [K]'
# set key top right
# set xrange [0:100]
# set title sprintf('T_{m} = a exp(-t/b), a = %.2f, b = %.2f', a, b)
# p data[2] u 1:6 w l t 'T = 0K, {/Symbol g} = 2', \
#   [0:100] f(x) w l lc rgb "red" t 'Fit'

fit [0:100] f(x) data[3] u 1:6 via a,b
set xlabel 'Time [ps]'
set ylabel 'T_{m} [K]'
set key top right
set xrange [0:100]
set title sprintf('T_{m} = a exp(-t/b), a = %.2f, b = %.2f', a, b)
p data[3] u 1:6 w l t 'T = 0K, {/Symbol g} = 3', \
  [0:100] f(x) w l lc rgb "red" t 'Fit'
