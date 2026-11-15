f(x) = a*(1-exp(-x/b))
a = 1.0 ; b = 100.0   
fit f(x) 'avg_q.dat' u 1:2 via a, b
k_ab = (1-a)/b ; k_ba = a/b

set xlabel 'Time [ps]'
set ylabel 'q'
set ytics 0.2
set xtics 200
set key bottom right
set key font "Arial,24"
set title sprintf('Rates: k_{ab} = %.4f, k_{ba} = %.4f', k_ab, k_ba)
p 'avg_q.dat' u 1:2 w l t 'q(t)', f(x) w l t sprintf('Fit: a = %.2f, b = %d', a, b)