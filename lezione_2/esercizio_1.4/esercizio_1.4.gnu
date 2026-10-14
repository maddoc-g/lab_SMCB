set yrange [11.66:11.85]
p 'Verlet_50ps_10-3ps.dat' u 1:4 w l t 'Verlet, {/Symbol D}t = 10^{-3} ps', 'velocity_Verlet_50ps_10-3ps.dat' u 1:4 w l t 'velocity Verlet, {/Symbol D}t = 10^{-3} ps'
