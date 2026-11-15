array data[2] = ['data/unfolding_100K.dat', 'data/folding_100K_to_10K_g1.dat']

set terminal pdfcairo enhanced font 'Arial,28' size 12,6
set output 'trend_q_dRMSD_100K_to_10K_g1.pdf'

set multiplot
set tmargin at screen 0.89
set bmargin at screen 0.17
set key off

# ---------- left panel: unfolding ----------
set lmargin at screen 0.14
set rmargin at screen 0.434          # width proportional to x-range (200 vs 1450)
set border 11                        # bottom + left + right (right line = divider)
set xrange [0:200]
set xtics 50 nomirror
set yrange [0:1]
set ytics 0.2 nomirror textcolor rgb 'red'
set ylabel 'q' textcolor rgb 'red'
unset y2tics
unset y2label
set y2range [0:25]
set title 'Unfolding at 100K'

# shared x label, placed once in the middle of the whole figure
set label 1 'Time [ps]' at screen 0.51, 0.05 center

plot data[1] using 1:7 axes x1y1 with lines lc rgb 'red' lw 1.5, \
     ''      using 1:8 axes x1y2 with lines lc rgb 'black' lw 1.5

# ---------- right panel: refolding ----------
unset label 1
set lmargin at screen 0.434
set rmargin at screen 0.885
set border 9                         # bottom + right
set xrange [200:1200]
set xtics 200 nomirror
unset ylabel
unset ytics
set y2tics 5 nomirror textcolor rgb 'black'
set y2label 'd_{RMSD}' textcolor rgb 'black'
set title 'Refolding at 10K'

plot data[2] using ($1+200):7 axes x1y1 with lines lc rgb 'red' lw 1.5, \
     '' using ($1+200):8 axes x1y2 with lines lc rgb 'black' lw 1.5

unset multiplot
unset output