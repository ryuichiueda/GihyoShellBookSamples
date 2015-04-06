#!/bin/bash -xv

mkdir -p ~/tmp/ && cd ~/tmp/

seq 1 30000 |
awk -v "x=1" -v "y=2" -v "z=3" -v "p=10" -v "r=28" -v "b=2.666666" -v "dt=0.001" \
'{
    dx=(-p*x+p*y)*dt;
    dy=(-x*z+r*x-y)*dt;
    dz=(x*y-b*z)*dt;
    print x,y,z;
    x+=dx;y+=dy;z+=dz;
}' > ./lorenz

seq -w 1 30000    |
grep '00$'        |
while read n ; do
    head -n $n ./lorenz > ./lorenz_${n}
    cat <<- FIN | gnuplot
    set terminal png;
    set output 'lorenz_${n}.png';
    splot 'lorenz_${n}' with p pt 0 ps 1
FIN
done

convert lorenz_*.png lorenz_animation.gif
