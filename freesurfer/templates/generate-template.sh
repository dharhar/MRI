# Run as interactive session on the cluster
# Not sure if it is possible to submit a job to a compute node
# from a compute node. In other words, can we sbatch the following 
# script, which parallel processes the brains by sbatch?
export ANTSPATH=/{{ home_mount }}/hunsakern/apps/ants-20160404/bin/
PATH=${ANTSPATH}:${PATH}

## Copy the files to a single directory, I relabeled with img prefix
## Must run buildtemplateparallel.sh from within the directory
cd /{{ home_mount }}/{{ main_user }}/SingleExposure/T1_processed/ants_template/ 

## First part takes 2.5 hours on cluster
buildtemplateparallel.sh -d 3 -m 1x0x0 -o pt1 *co*.nii

## Second part takes 14.5 hours on cluster
buildtemplateparallel.sh -d 3 -z /{{ home_mount }}/{{ main_user }}/SingleExposure/T1_processed/ants_template/pt1template.nii.gz -o pt2 *co*.nii

# Monitor job progress
watch --interval=150 qstat

# Possible way to catch errors
while :
do 
qstat | awk '$5 == "Eqw" {cmd="qmod -cj " $1; system(cmd); close(cmd)}'
sleep 30
done
