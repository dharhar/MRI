#!/bin/bash

for subj in $(ls /{{ home_mount }}/{{ main_user }}/ANTs/subject_list/); do
echo "Processing" $subj
sbatch -o /{{ home_mount }}/{{ main_user }}/logfiles/2016-06-30-SyNQuick/output_${subj}.txt /{{ home_mount }}/{{ main_user }}/scripts/antsRegSyNQuick.sh ${subj}
#sleep 1
done
