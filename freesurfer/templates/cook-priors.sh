#!/bin/bash

# SET ANTSPATH
export ANTSPATH=/{{ home_mount }}/hunsakern/apps/ants-20160404/bin/
C3DPATH=/{{ home_mount }}/hunsakern/apps/c3d-1.0.0-Linux-x86_64/bin/

# SET VARIABLES
DATA_DIR=/{{ home_mount }}/hunsakern/templates/iScore
TEMPLATE_DIR=/{{ home_mount }}/hunsakern/templates/OASIS
INPUT_IMAGE=${DATA_DIR}/iScore_template.nii.gz

# RUN ANTSCORTICALTHICKNESS
${ANTSPATH}antsCorticalThickness.sh -d 3 \
  -a $INPUT_IMAGE \
  -e ${TEMPLATE_DIR}/T_template0.nii.gz \
  -m ${TEMPLATE_DIR}/T_template0_BrainCerebellumProbabilityMask.nii.gz \
  -f ${TEMPLATE_DIR}/T_template0_BrainCerebellumRegistrationMask.nii.gz \
  -p ${TEMPLATE_DIR}/Priors2/priors%d.nii.gz \
  -o ${DATA_DIR}/antsCT/ \
  -q 1 \
  -u 1

# COPY MASK
cp ${DATA_DIR}/antsCT/BrainExtractionMask.nii.gz ${DATA_DIR}/iScore_template_BrainCerebellumMask.nii.gz

# EXTRACT BRAIN IMAGE
${ANTSPATH}/ImageMath 3 ${DATA_DIR}/iScore_template_BrainCerebellum.nii.gz m ${DATA_DIR}/iScore_template_BrainCerebellumMask.nii.gz $INPUT_IMAGE

# CONVERT MASK ROI TO PROBABILITY MASK
${ANTSPATH}/SmoothImage 3 ${DATA_DIR}/iScore_template_BrainCerebellumMask.nii.gz 1 ${DATA_DIR}/iScore_template_BrainCerebellumProbabilityMask.nii.gz

# DILATE MASK IMAGE TO GENERATE EXTRACTION MASK
${C3DPATH}/c3d ${DATA_DIR}/iScore_template_BrainCerebellumMask.nii.gz -dilate 1 28x28x28vox -o ${DATA_DIR}/iScore_template_BrainCerebellumExtractionMask.nii.gz

# DILATE MASK IMAGE TO GENERATE REGISTRATION MASK
${C3DPATH}/c3d ${DATA_DIR}/iScore_template_BrainCerebellumMask.nii.gz -dilate 1 18x18x18vox -o ${DATA_DIR}/iScore_template_BrainCerebellumRegistrationMask.nii.gz

# COPY TISSUE SEGMENTATION
cp ${DATA_DIR}/antsCT/BrainSegmentation.nii.gz ${DATA_DIR}/iScore_template_6labels.nii.gz

# COPY TISSUE PRIORS
cp ${DATA_DIR}/antsCT/BrainSegmentationPosteriors1.nii.gz ${DATA_DIR}/priors/priors1.nii.gz
cp ${DATA_DIR}/antsCT/BrainSegmentationPosteriors2.nii.gz ${DATA_DIR}/priors/priors2.nii.gz
cp ${DATA_DIR}/antsCT/BrainSegmentationPosteriors3.nii.gz ${DATA_DIR}/priors/priors3.nii.gz
cp ${DATA_DIR}/antsCT/BrainSegmentationPosteriors4.nii.gz ${DATA_DIR}/priors/priors4.nii.gz
cp ${DATA_DIR}/antsCT/BrainSegmentationPosteriors5.nii.gz ${DATA_DIR}/priors/priors5.nii.gz
cp ${DATA_DIR}/antsCT/BrainSegmentationPosteriors6.nii.gz ${DATA_DIR}/priors/priors6.nii.gz