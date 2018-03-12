#!/bin/bash

for subj in $(ls /{{ home_mount }}/{{ main_user }}/data/UCSD); do
sbatch -o /{{ home_mount }}/{{ main_user }}/logfiles/2017-10-14/output_${subj}.txt /{{ home_mount }}/{{ main_user }}/scripts/antsCT_cv.sh ${subj}
#sleep 1
echo ${subj} " Participant is already done"
done
