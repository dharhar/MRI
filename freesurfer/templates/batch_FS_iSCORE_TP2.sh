#!/bin/bash

for subject in $(ls /{{ home_mount }}/{{ main_user }}/iSCORE_TP2/); do
echo "Processing" $subject
sbatch -o /{{ home_mount }}/{{ main_user }}/logfiles/2018-02-02_TP2/output_${subject}.txt /{{ home_mount }}/{{ main_user }}/scripts/FS_recon_all_iSCORE_TP2.sh ${subject}
#sleep 1  
done
