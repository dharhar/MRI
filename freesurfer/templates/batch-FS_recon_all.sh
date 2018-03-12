#!/bin/bash

for subject in $(ls /{{ home_mount }}/{{ main_user }}/Finland/); do
echo "Processing" $subject
sbatch -o /{{ home_mount }}/{{ main_user }}/logfiles/2017-02-03/output_${subject}.txt /{{ home_mount }}/{{ main_user }}/scripts/FS_recon_all_2.sh ${subject}
#sleep 1
done
