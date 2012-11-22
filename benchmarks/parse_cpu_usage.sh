#! /bin/bash

if [ -z "$1" ]
then
        echo "No argument supplied"
        exit
fi

INP=$1

egrep -v "(cache|procs)" $INP | tail -50 | head -40 | awk '{ us_ave += $13; sys_ave +=$14; idle_ave +=$15; count += 1 } END { print us_ave/count,"\t" sys_ave/count,"\t" idle_ave/count }' >> cpu_usage.txt


