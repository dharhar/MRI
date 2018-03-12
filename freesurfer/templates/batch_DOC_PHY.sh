#!/bin/bash

for subject in $(ls /{{ home_mount }}/{{ main_user }}/DOC_PHY_25Oct/); do
echo "Processing" $subject
sbatch -o /{{ home_mount }}/{{ main_user }}/logfiles/2016-10-30/output_${subject}.txt /{{ home_mount }}/{{ main_user }}/scripts/FS_DOC_PHY.sh ${subject}
#sleep 1
done
