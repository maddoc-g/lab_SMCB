array data[2] = ['output_300K_1D_binned.dat', 'output_300K_2D_binned.dat']

k_b = 0.08617718 # meV/K
T   = 300.0
dRg = 0.67139

set terminal pdfcairo enhanced color font "Arial,28" size 11,7.5
set output "F(q)_integrated_and_1D_binned.pdf"


# Probability and free energy 2D plots from 2D binned data

# set xlabel "Head-tail distance q  [Å]"
# set ylabel "Gyration radius R_{g}  [Å]"
# set cblabel "p(q,R_{g})"
# set cbtics 0.002
# set pm3d interpolate 4,4
# set view map
# splot data[2] w pm3d notitle

# set cblabel "F(q,R_{g}) [meV]"
# set cbtics 50
# splot data[2] u 1:2:(-k_b*T*log($3)) w pm3d notitle


# Integrated and 1D binned free energy plot: F(q) = -k_b*T*log(integral(p(q,Rg)dRg))

set format x "%.10g"
set table $integral
plot data[2] using 1:($3*dRg) smooth frequency w l
unset table
set format x

set xlabel "Head-tail distance q [Å]"
set ylabel "F(q) [meV]"
p $integral u 1:(-k_b*T*log($2)) w lp pt 7 lc rgb 'black' t 'Integrated F(q)'
p data[1] u 1:(-k_b*T*log($2)) w lp pt 7 lc rgb 'red' t '1D binned F(q)'

unset output
