#!/bin/bash

# LOAD MODULES AND SET ENVIRONMENTAL VARIABLES
export FREESURFER_HOME=/usr/local/freesurfer
PATH=${FREESURFER_HOME}:${PATH}

# SET VARIABLES
SUBJECTS_DIR=/{{ home_mount }}/{{ main_user }}/FreeSurferProcessed/

#recon-all
/usr/local/freesurfer/bin/recon-all \
-subjid ${1} \
-sd ${SUBJECTS_DIR} \
-i /{{ home_mount }}/{{ main_user }}/DOC_PHY/${1}/${1}_T1_1.nii.gz \
-i /{{ home_mount }}/{{ main_user }}/DOC_PHY/${1}/${1}_T1_2.nii.gz \
-i /{{ home_mount }}/{{ main_user }}/DOC_PHY/${1}/${1}_T1_3.nii.gz \
-i /{{ home_mount }}/{{ main_user }}/DOC_PHY/${1}/${1}_T1_4.nii.gz \
-i /{{ home_mount }}/{{ main_user }}/DOC_PHY/${1}/${1}_T1_5.nii.gz \
-i /{{ home_mount }}/{{ main_user }}/DOC_PHY/${1}/${1}_T1_6.nii.gz \
-all \

