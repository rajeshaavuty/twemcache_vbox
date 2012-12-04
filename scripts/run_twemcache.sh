#! /bin/bash

twemcache -u root --verbosity=0 --threads=4 --max-requests=512 --max-conns=1024 --backlog=1000000 --max-memory=1024 -o out.txt 2>&1 | tee -a -i time.txt
