#!/bin/bash

# LOAD MODULES AND SET ENVIRONMENTAL VARIABLES
export ANTSPATH=/{{ home_mount }}/hunsakern/apps/ants-20160404/bin/
PATH=${ANTSPATH}:${PATH}
ARTHOME=/{{ home_mount }}/hunsakern/apps/art
export ARTHOME

# SET VARIABLES
SUBJ_DIR=/{{ home_mount }}/hunsakern/data/iScore/${1}
TEMPLATE_DIR=/{{ home_mount }}/hunsakern/templates/iScore

# REORIENT
# /{{ home_mount }}/hunsakern/apps/mricron/dcm2nii -r y -g n -o ${SUBJ_DIR}/t1/ ${SUBJ_DIR}/t1/t1.nii

# ACPC ALIGN
# /{{ home_mount }}/hunsakern/apps/art/acpcdetect -M \
# -o ${SUBJ_DIR}/t1/acpc.nii \
# -i ${SUBJ_DIR}/t1/ft1.nii
# rm ${SUBJ_DIR}/t1/ft1.nii

# RESAMPLE TO 1 ISOTROPIC
# /{{ home_mount }}/hunsakern/apps/c3d-1.0.0-Linux-x86_64/bin/c3d -verbose \
# ${SUBJ_DIR}/t1/acpc.nii \
# -resample-mm 1x1x1mm \
# -o ${SUBJ_DIR}/t1/resampled.nii.gz
# rm ${SUBJ_DIR}/t1/*.ppm
# rm ${SUBJ_DIR}/t1/*.txt
# rm ${SUBJ_DIR}/t1/acpc.nii

# N4 BIAS FIELD CORRECTION
# /{{ home_mount }}/hunsakern/apps/ants-20160404/bin/N4BiasFieldCorrection -d 3 -v 1 \
# -i ${SUBJ_DIR}/t1/resampled.nii.gz \
# -o ${SUBJ_DIR}/t1/n4.nii.gz \
# -s 4 \
# -b [200] \
# -c [50x50x50x50,0.000001]
# rm ${SUBJ_DIR}/t1/resampled.nii.gz
# mv ${SUBJ_DIR}/t1/n4.nii.gz ${SUBJ_DIR}/t1/t1.nii.gz
# mv ${SUBJ_DIR}/t1/t1.nii ${SUBJ_DIR}/t1/orig.nii

# ANTS CORTICAL THICKNESS
/{{ home_mount }}/hunsakern/apps/ants-20160404/bin/antsCorticalThickness.sh -d 3 -k 0 \
-a ${SUBJ_DIR}/t1/t1.nii.gz \
-e ${TEMPLATE_DIR}/iScore_template.nii.gz \
-t ${TEMPLATE_DIR}/iScore_template_BrainCerebellum.nii.gz \
-m ${TEMPLATE_DIR}/iScore_template_BrainCerebellumProbabilityMask.nii.gz \
-f ${TEMPLATE_DIR}/iScore_template_BrainCerebellumRegistrationMask.nii.gz \
-p ${TEMPLATE_DIR}/priors/priors%d.nii.gz \
-o ${SUBJ_DIR}/antsCTTest/ \
-q 1 \
-u 1
