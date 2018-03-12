#!/bin/bash

for subj in $(ls /{{ home_mount }}/{{ main_user }}/SingleExposure/T1_processed/ants_template); do
DIR=/{{ home_mount }}/{{ main_user }}/SingleExposure/T1_processed/ants_template/${subj}/antsCT
if [ ! -e $DIR ]; then
echo "Processing" $subj
sbatch -o /{{ home_mount }}/{{ main_user }}/SingleExposure/T1_processed/logfiles/2016-05-18/output_${subj}.txt /{{ home_mount }}/{{ main_user }}/scripts/generate-template.sh ${subj}
#sleep 1
else
echo ${subj} " Participant is already done"
fi
done
