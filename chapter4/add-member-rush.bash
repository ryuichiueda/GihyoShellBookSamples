#!/bin/bash

echo './db/script/add-member $$ 2> /dev/null' > /tmp/com
chmod +x /tmp/com

for i in {1..100} ; do
     flock ./db/data/ /tmp/com &
done

wait
