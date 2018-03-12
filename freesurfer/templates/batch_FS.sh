#!/bin/bash

for subject in $(ls /{{ home_mount }}/{{ main_user }}/data/Baylor); do
echo "Processing" $subject
sbatch -o /{{ home_mount }}/{{ main_user }}/logfiles/2017-10-17/output_${subject}.txtsh /{{ home_mount }}/{{ main_user }}/scripts/FS_recon_all.sh ${subject}
#sleep 1  
done
