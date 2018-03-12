TEMPLATE_DIR=/{{ home_mount }}/hunsakern/templates/iScore
ATLAS_DIR=/{{ home_mount }}/hunsakern/templates/OASIS-TRT-20_volumes
LABEL_DIR=/{{ home_mount }}/hunsakern/templates/OASIS-TRT-20_DKT31_CMA_labels_v2
cd ${TEMPLATE_DIR}
${ANTSPATH}/antsJointLabelFusion.sh \
-d 3 \
-o ${TEMPLATE_DIR}/labels/ \
-t ${TEMPLATE_DIR}/iScore_template_BrainCerebellum.nii.gz \
-c 1 -j 2 -y s -k 0 \
-g ${ATLAS_DIR}/OASIS-TRT-20-1/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-1_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-2/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-2_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-3/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-3_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-4/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-4_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-5/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-5_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-6/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-6_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-7/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-7_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-8/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-8_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-9/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-9_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-10/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-10_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-11/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-11_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-12/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-12_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-13/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-13_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-14/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-14_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-15/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-15_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-16/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-16_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-17/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-17_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-18/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-18_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-19/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-19_DKT31_CMA_labels.nii.gz \
-g ${ATLAS_DIR}/OASIS-TRT-20-20/t1weighted_brain.nii.gz -l ${LABEL_DIR}/OASIS-TRT-20-20_DKT31_CMA_labels.nii.gz