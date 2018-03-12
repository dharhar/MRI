#!/bin/bash

# LOAD MODULES AND SET ENVIRONMENTAL VARIABLES
export FREESURFER_HOME=/usr/local/freesurfer
PATH=${FREESURFER_HOME}:${PATH}

# SET VARIABLES
SUBJECT_DIR=/{{ home_mount }}/{{ main_user }}/FreeSurferProcessed/

#longitudinal processing
/usr/local/freesurfer/bin/recon-all \
-long /{{ home_mount }}/{{ main_user }}/FreeSurferProcessed/${1}_2 /{{ home_mount }}/{{ main_user }}/FreeSurferProcessed/${1}_t2 \
-sd ${SUBJECT_DIR} \
-all \

