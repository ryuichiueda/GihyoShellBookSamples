#!/bin/bash

cat girth-height           |
sm2 +count 0 0 1 2         |
awk '{print $2/$1,$3/$1}'  |
loopx girth-height -       |
#1:x 2:y 3:x平均 4:y平均
awk '{
    a+=($1-$3)*($2-$4);
    b+=($1-$3)^2;
    c+=($2-$4)^2;
}
END{
    print a/sqrt(b*c);
}'
