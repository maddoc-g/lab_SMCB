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
STATS_records = 21
STATS_invalid = 0
STATS_headers = 0
STATS_blank = 0
STATS_blocks = 1
STATS_outofrange = 0
STATS_columns = 5
STATS_mean_x = 100.0
STATS_stddev_x = 60.5530070819498
STATS_ssd_x = 62.0483682299543
STATS_skewness_x = 0.0
STATS_kurtosis_x = 1.79454545454545
STATS_adev_x = 52.3809523809524
STATS_mean_err_x = 13.2137494528682
STATS_stddev_err_x = 9.34353184302313
STATS_skewness_err_x = 0.534522483824849
STATS_kurtosis_err_x = 1.0690449676497
STATS_sum_x = 2100.0
STATS_sumsq_x = 287000.0
STATS_min_x = 0.0
STATS_max_x = 200.0
STATS_median_x = 100.0
STATS_lo_quartile_x = 50.0
STATS_up_quartile_x = 150.0
STATS_index_min_x = 0
STATS_index_max_x = 20
STATS_mean_y = 12.1820389047619
STATS_stddev_y = 3.05849765635944
STATS_ssd_y = 3.1340274902518
STATS_skewness_y = -0.0460301686427183
STATS_kurtosis_y = 1.55519399720893
STATS_adev_y = 2.7219549478458
STATS_mean_err_y = 0.667418905862484
STATS_stddev_err_y = 0.471936434227468
STATS_skewness_err_y = 0.534522483824849
STATS_kurtosis_err_y = 1.0690449676497
STATS_sum_y = 255.822817
STATS_sumsq_y = 3312.88607561287
STATS_min_y = 7.276004
STATS_max_y = 16.310941
STATS_median_y = 11.7406
STATS_lo_quartile_y = 9.16486
STATS_up_quartile_y = 15.27625
STATS_index_min_y = 16
STATS_index_max_y = 11
STATS_slope = -0.00602508051948046
STATS_intercept = 12.7845469567099
STATS_slope_err = 0.011504920144478
STATS_intercept_err = 1.34497716074331
STATS_correlation = -0.119286258927426
STATS_sumxy = 25118.3505
STATS_pos_min_y = 160.0
STATS_pos_max_y = 110.0
amp_6 = 0.000181500000000057
amp_5 = 0.00062300000000004
amp_4 = 0.0062224999999998
amp_3 = 0.0622444999999994
amp_2 = 0.6047205
amp_1 = 4.5174685
array amplitudes[6] = [4.5174685,0.6047205,0.0622444999999994,0.0062224999999998,0.00062300000000004,0.000181500000000057]
array timesteps[6] = [0.1,0.01,0.001,0.0001,1e-05,1e-06]
## Last datafile plotted: "@@"
p amplitudes u (timesteps[$1]):2 w p pt 7 ps 1.5
#    EOF
