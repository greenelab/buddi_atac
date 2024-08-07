#!/bin/bash

# this script processes all of the cfDNA
# is it a master script for process_cfdna.sh

in_path=$1 # /PATH/buddi_atac/buddi_atac/data/cfDNA/
script_path=$2 # /PATH/buddi_atac/buddi_atac/preprocessing_qc/

in_name=EE86238
ct_name=LUNG_IC15
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86258
ct_name=LIHC_IC36
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86246
ct_name=LIHC_IC23
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86233
ct_name=LUNG_IC10
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86230
ct_name=LUNG_IC06
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86269
ct_name=BRCA_IC48
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86267
ct_name=BRCA_IC46
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86264
ct_name=LUNG_IC42
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86259
ct_name=COAD_IC37
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86257
ct_name=BRCA_IC35
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86256
ct_name=BRCA_IC34
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86243
ct_name=LUNG_IC20
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86240
ct_name=LIHC_IC17
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86235
ct_name=BRCA_IC12
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86228
ct_name=BRCA_IC04
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}


in_name=EE86276
ct_name=blood_IH03
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86275
ct_name=blood_IH02
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}

in_name=EE86274
ct_name=blood_IH01
sh ${script_path}/process_cfdna.sh ${in_path} ${in_name} ${ct_name}
