#!/bin/bash

# this script processes all of the cfDNA
# it is expected to be run by the script  run_process_cfdna.sh
# if the expected file has already been created, it will ignore skip creating it

in_path=$1
in_name=$2
ct_name=$3

echo $in_name
echo $ct_name

# gunzip
if [ -f ${in_path}/${in_name}.hg38.frag.tsv.bgz ]; then
    mv ${in_path}/${in_name}.hg38.frag.tsv.bgz ${in_path}/${in_name}.hg38.frag.tsv.gz
else
    echo "skip making gz"
fi

if [ ! -f ${in_path}/${in_name}.hg38.frag.tsv ]; then
    gunzip ${in_path}/${in_name}.hg38.frag.tsv.gz
else
    echo "skip unzipping"
fi


# remove zeros
if [ ! -f ${in_path}/${in_name}.hg38.frag_filt.tsv ]; then
    cat ${in_path}/${in_name}.hg38.frag.tsv | awk '!($4 == 0)' > ${in_path}/${in_name}.hg38.frag_filt.tsv
else
    echo "skip removing zeros"
fi

# format like bed file expected by muon and add real sample ID
if [ ! -f ${in_path}/${in_name}.hg38.frag_filt_format.tsv ]; then
    awk -v var=${ct_name} '{ printf("%s\t%s\t%s\t"'"var"'" \t%s\n", $1, $2, $3, $4, $5) }' ${in_path}/${in_name}.hg38.frag_filt.tsv > ${in_path}/${in_name}.hg38.frag_filt_format.tsv
else
    echo "skip formatting bed"
fi

if [ ! -f ${in_path}/${in_name}.hg38.frag_filt_format_bgzip.tsv.gz ]; then
    cp ${in_path}/${in_name}.hg38.frag_filt_format.tsv ${in_path}/${in_name}.hg38.frag_filt_format_bgzip.tsv
    bgzip ${in_path}/${in_name}.hg38.frag_filt_format_bgzip.tsv
    tabix -p bed ${in_path}/${in_name}.hg38.frag_filt_format_bgzip.tsv.gz
else
    echo "skip bgzip and indexing"
fi

echo "done"