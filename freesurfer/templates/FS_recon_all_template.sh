#!/bin/bash

# LOAD MODULES AND SET ENVIRONMENTAL VARIABLES
export FREESURFER_HOME=/usr/local/freesurfer
PATH=${FREESURFER_HOME}:${PATH}

# SET VARIABLES
SUBJECT_DIR=/{{ home_mount }}/{{ main_user }}/FreeSurferProcessed/

#template
/usr/local/freesurfer/bin/recon-all \
-base ${1}_t2 \
-tp /{{ home_mount }}/{{ main_user }}/FreeSurferProcessed/${1}_1 \
-tp /{{ home_mount }}/{{ main_user }}/FreeSurferProcessed/${1}_2 \
-sd ${SUBJECT_DIR} \
-all \
