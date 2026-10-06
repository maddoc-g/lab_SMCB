#!/usr/bin/gnuplot
#
#    
#    	G N U P L O T
#    	Version 6.0 patchlevel 0    last modified 2023-12-09 
#    
#    	Copyright (C) 1986-1993, 1998, 2004, 2007-2023
#    	Thomas Williams, Colin Kelley and many others
#    
#    	gnuplot home:     http://www.gnuplot.info
#    	faq, bugs, etc:   type "help FAQ"
#    	immediate help:   type "help"  (plot window: hit 'h')
# set terminal x11  nopersist enhanced
# set output
unset clip points
set clip one
unset clip two
unset clip radial
set errorbars front 1.000000 
set border 31 front lt black linewidth 1.000 dashtype solid
set cornerpoles
set zdata 
set ydata 
set xdata 
set y2data 
set x2data 
set boxwidth
set boxdepth 0
set style fill  empty border
set style rectangle back fc  bgnd fillstyle   solid 1.00 border lt -1
set style circle radius graph 0.02 
set style ellipse size graph 0.05, 0.03 angle 0 units xy
set dummy x, y
set format x "% h" 
set format y "% h" 
set format x2 "% h" 
set format y2 "% h" 
set format z "% h" 
set format cb "% h" 
set format r "% h" 
set ttics format "% h"
set timefmt "%d/%m/%y,%H:%M"
set angles radians
set tics back
unset grid
unset raxis
set theta counterclockwise right
set style parallel front  lt black linewidth 2.000 dashtype solid
set key notitle
set key fixed left top vertical Right noreverse enhanced autotitle nobox
set key noinvert samplen 2 spacing 1.2 width 0 height 0
set key maxcolumns 0 maxrows 0
set key noopaque
unset label
unset arrow
unset style line
set style line 1  linecolor rgb "dark-violet"  linewidth 2.000 dashtype solid pointtype 1 pointsize default
set style line 2  linecolor rgb "#009e73"  linewidth 2.000 dashtype solid pointtype 2 pointsize default
set style line 3  linecolor rgb "#56b4e9"  linewidth 2.000 dashtype solid pointtype 3 pointsize default
set style line 4  linecolor rgb "#e69f00"  linewidth 2.000 dashtype solid pointtype 4 pointsize default
set style line 5  linecolor rgb "#f0e442"  linewidth 2.000 dashtype solid pointtype 5 pointsize default
set style line 6  linecolor rgb "#0072b2"  linewidth 2.000 dashtype solid pointtype 6 pointsize default
set style line 7  linecolor rgb "#e51e10"  linewidth 2.000 dashtype solid pointtype 7 pointsize default
set style line 8  linecolor rgb "black"  linewidth 2.000 dashtype solid pointtype 8 pointsize default
set style line 9  linecolor rgb "dark-violet"  linewidth 2.000 dashtype solid pointtype 1 pointsize default
set style line 10  linecolor rgb "#009e73"  linewidth 2.000 dashtype solid pointtype 1 pointsize default
set style line 11  linecolor rgb "#56b4e9"  linewidth 2.000 dashtype solid pointtype 1 pointsize default
set style line 12  linecolor rgb "#e69f00"  linewidth 2.000 dashtype solid pointtype 1 pointsize default
set style line 13  linecolor rgb "#f0e442"  linewidth 2.000 dashtype solid pointtype 1 pointsize default
set style line 14  linecolor rgb "#0072b2"  linewidth 2.000 dashtype solid pointtype 1 pointsize default
set style line 15  linecolor rgb "#e51e10"  linewidth 2.000 dashtype solid pointtype 1 pointsize default
set style line 16  linecolor rgb "black"  linewidth 2.000 dashtype solid pointtype 1 pointsize default
set style line 17  linecolor rgb "dark-violet"  linewidth 2.000 dashtype solid pointtype 1 pointsize default
set style line 18  linecolor rgb "#009e73"  linewidth 2.000 dashtype solid pointtype 1 pointsize default
set style line 19  linecolor rgb "#56b4e9"  linewidth 2.000 dashtype solid pointtype 1 pointsize default
set style line 20  linecolor rgb "#e69f00"  linewidth 2.000 dashtype solid pointtype 1 pointsize default
unset style arrow
set style histogram clustered gap 2 title textcolor lt -1
unset object
unset walls
set style textbox  transparent margins  1.0,  1.0 border  lt -1 linewidth  1.0
set offsets 0, 0, 0, 0
set pointsize 1
set pointintervalbox 1
set encoding default
unset parametric
unset polar
unset spiderplot
unset decimalsign
unset micro
unset minussign
set view 60, 30, 1, 1
set view azimuth 0
set rgbmax 255
set samples 100, 100
set isosamples 10, 10
set surface implicit
set surface
set mapping cartesian
set datafile separator whitespace
set datafile commentschars '#!%'
set datafile nocolumnheaders
unset hidden3d

unset contour
set cntrlabel  format '%8.3g' font '' start 5 interval 20
set cntrparam order 4
set cntrparam linear
set cntrparam levels 5
set cntrparam levels auto
set cntrparam firstlinetype 0 unsorted
set cntrparam points 5
set size ratio 0 1,1
set origin 0,0
set contourfill auto 5
set contourfill palette
set style data lines
set style function lines
unset xzeroaxis
unset yzeroaxis
unset zzeroaxis
unset x2zeroaxis
unset y2zeroaxis
set xyplane relative 0.5
set tics scale  1, 0.5, 1, 1, 1
set mxtics default
set mytics default
set mztics default
set mx2tics default
set my2tics default
set mcbtics default
set mrtics default
set nomttics
set xtics border in scale 1,0.5 mirror norotate  autojustify
set xtics  norangelimit logscale autofreq 
set ytics border in scale 1,0.5 mirror norotate  autojustify
set ytics  norangelimit logscale autofreq 
set ztics border in scale 1,0.5 nomirror norotate  autojustify
set ztics  norangelimit autofreq 
unset x2tics
unset y2tics
set cbtics border in scale 1,0.5 mirror norotate  autojustify
set cbtics  norangelimit autofreq 
set rtics axis in scale 1,0.5 nomirror norotate  autojustify
set rtics  norangelimit autofreq 
unset ttics
set title "" 
set title  font "" textcolor lt -1 norotate
set timestamp bottom 
set timestamp "" 
set timestamp  font "" textcolor lt -1 norotate
set trange [ * : * ] noreverse nowriteback
set urange [ * : * ] noreverse nowriteback
set vrange [ * : * ] noreverse nowriteback
set xlabel "Timestep [ps]" 
set xlabel  font "" textcolor lt -1 norotate
set x2label "" 
set x2label  font "" textcolor lt -1 norotate
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set ylabel "Energy oscillation amplitude [meV]" 
set ylabel  font "" textcolor lt -1 rotate
set y2label "" 
set y2label  font "" textcolor lt -1 rotate
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zlabel "" 
set zlabel  font "" textcolor lt -1 norotate
set zrange [ * : * ] noreverse writeback
set cblabel "" 
set cblabel  font "" textcolor lt -1 rotate
set cbrange [ * : * ] noreverse writeback
set rlabel "" 
set rlabel  font "" textcolor lt -1 norotate
set rrange [ * : * ] noreverse writeback
unset logscale
set logscale y 10
set logscale x 10
unset jitter
set zero 1e-08
set lmargin  -1
set bmargin  -1
set rmargin  -1
set tmargin  -1
set locale "C.UTF-8"
set pm3d explicit at s
set pm3d scansautomatic
set pm3d interpolate 1,1 flush begin noftriangles noborder corners2color mean
set pm3d clip z 
set pm3d nolighting
set palette positive nops_allcF maxcolors 0 gamma 1.5 color model RGB 
set palette rgbformulae 7, 5, 15
set colorbox default
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault
set style boxplot candles range  1.50 outliers pt 7 separation 1 labels auto unsorted
set chi_shapes fraction 0.60
set loadpath 
set fontpath
set psdir
set fit brief errorvariables nocovariancevariables errorscaling prescale nowrap v5
round2(x, n) = round(x*10**n)*10.0**(-n)
bin(x,s) = s*floor(x/s)
echo(x) = x
GNUTERM = "wxt"
I = {0.0, 1.0}
VoxelDistance = 0.0
GridDistance = 0.0
pdfplot = "set term push; set term pdfcairo enhanced color rounded size 8,6 lw 1.5 font 'Arial,28'; set border lw 1.5 front; set out 'temp.pdf' ; replot; set out; set term pop"
epsplot = "set term push; set term epscairo enhanced color rounded size 8,6 lw 1.5 font 'Arial,28'; set border lw 1.5 front; set out 'temp.eps' ; replot; set out; set term pop"
pngplot = "set term push; set term pngcairo enhanced color rounded size 1600,1200 lw 1.5 font 'Arial,28'; set border lw 1.5 front; set out 'temp.png' ; replot; set out; set term pop"
matlab = "set palette positive nops_allcF maxcolors 0 gamma 1.5 color model RGB;           set palette defined  (0  0.0 0.0 0.5,                                 1  0.0 0.0 1.0,                                 2  0.0 0.5 1.0,                                 3  0.0 1.0 1.0,                                 4  0.5 1.0 0.5,                                 5  1.0 1.0 0.0,                                 6  1.0 0.5 0.0,                                 7  1.0 0.0 0.0,                                 8  0.5 0.0 0.0 )"
rainbow = "set palette positive nops_allcF maxcolors 0 gamma 1.5 color model HSV;            set palette defined ( 0 0 1 1, 1 0.85 1 1 )"
mandelbrot = "set sample 500; set isosample 500; set pm3d map;               complex(x,y) = x*{1,0}+y*{0,1};               mandel(x,y,z,n) = (abs(z)>2.0 || n>=100) ? n : mandel(x,y,z*z+complex(x,y),n+1);               splot mandel(x,y,{0,0},0) w pm3d not"

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
