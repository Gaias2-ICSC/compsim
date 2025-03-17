#!/bin/bash


ls test_out > list.txt
while read line
do
    echo $line
    python particle_distribution_corsika8.py --input-dir test_out/$line --output-dir plots_corsika8/$line
    python shower_profile_corsika8.py --input-dir test_out/$line --output-dir plots_corsika8/$line

done < list.txt

rm list.txt
