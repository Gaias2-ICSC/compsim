#!/bin/bash


ls test_out > list.txt
while read line
do
    echo $line
    python particle_distribution.py --input-dir test_out/$line --output-dir plots/$line
    python shower_profile.py --input-dir test_out/$line --output-dir plots/$line

done < list.txt

rm list.txt
