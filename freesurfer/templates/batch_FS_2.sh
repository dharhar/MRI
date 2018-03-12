#/bin/bash

for subject in $(ls /{{ home_mount }}/{{ main_user }}/HIV/subj_List/); do
echo "Processing" $subject
sbatch -o /{{ home_mount }}/{{ main_user }}/logfiles/2017-01-10/output_${subject}.txt /{{ home_mount }}/{{ main_user }}/scripts/FS_recon_all_long.sh ${subject}
#sleep 1
done
