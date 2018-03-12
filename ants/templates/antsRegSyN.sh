export ANTSPATH=/{{ home_mount }}/hunsakern/apps/ants-20160404/bin/
PATH=${ANTSPATH}:${PATH}

cd /{{ home_mount }}/{{ main_user }}/ANTs/

${ANTSPATH}/antsRegistrationSyN.sh \
-d 3 \
-f /{{ home_mount }}/{{ main_user }}/ANTs/ENIGMA_DTI_FA.nii.gz \
-m /{{ home_mount }}/{{ main_user }}/ANTs/${1}*FA.nii.gz \
-o /{{ home_mount }}/{{ main_user }}/ANTs/${1}
