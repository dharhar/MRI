#/bin/bash

LOAD MODULES AND SET ENVIRONMENTAL VARIABLES
export FREESURFER_HOME=/usr/local/freesurfer
PATH=${FREESURFER_HOME}:${PATH}

# SET VARIABLES
SUBJECTS_DIR=/{{ home_mount }}/{{ main_user }}/FreeSurferProcessed/

#recon-all
/usr/local/freesurfer/bin/recon-all \
-subjid ${1} \
-sd ${SUBJECTS_DIR} \
-i /{{ home_mount }}/{{ main_user }}/Finland/${1}/${1}.nii.gz \
-all \

~       

