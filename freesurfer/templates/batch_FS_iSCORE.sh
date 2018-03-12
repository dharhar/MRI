#!/bin/bash

for subject in $(ls /{{ home_mount }}/{{ main_user }}/iSCORE/); do
echo "Processing" $subject
sbatch -o /{{ home_mount }}/{{ main_user }}/logfiles/2018-02-02/output_${subject}.txt /{{ home_mount }}/{{ main_user }}/scripts/FS_recon_all_iSCORE.sh ${subject}
#sleep 1  
done
