!# /bin/bash

twemcache -u root --verbosity=11 --threads=4 --max-requests=500 --max-conns=1024 --backlog=1000000 --max-memory=1024

