#!/bin/bash

echo './db/script/add-member $$ 2> /dev/null' > /tmp/com1

cat << 'FIN' > /tmp/com2
#!/bin/bash
grep '番号未発行' ./db/data/member.number    |
awk '{print $1}'                             |
sort -R                                      |
head -n 1                                    |
xargs ./db/script/givenumber
FIN
chmod +x /tmp/com{1,2}

for i in {1..100} ; do
    flock ./db/data/ /tmp/com1 &
    flock ./db/data/ /tmp/com2 &
done

wait
