#!/bin/bash

# location of CpG_OB_* and CpG_OT_* output files from 
# bismark_methylation_extractor; filenames should
# have format {cpg prefix}.{run}.{}
CALLDIR="$1"

# text file with format:
# regiontype coords[chrom:start-end]
REGIONF="$2"

OUTDIR=./calls

cat $REGIONF | while read -r line; do
  for callf in ${CALLDIR}/CpG_O*.txt; do
    rtype=$(echo $line | cut -d' ' -f1)
    coord=$(echo $line | cut -d' ' -f2 | tr ':' '_' | tr '-' '_')
	chr=$(echo $coord | cut -d'_' -f1)
	st=$(echo $coord | cut -d'_' -f2)
	en=$(echo $coord | cut -d'_' -f3)
	
	run=$(basename $callf | cut -d'.' -f2)
	strand=$(basename $callf | cut -d'_' -f2)
	outf=$OUTDIR/${run}.${rtype}.${coord}.txt
	echo "$outf"
	/home/njk40/bin/subset_bismark_calls $callf $chr $st $en | cut -f1,3,4,5 | awk -v OFS="\t" -v strand=$strand '{print strand,$0}' >>$outf
  done
done
