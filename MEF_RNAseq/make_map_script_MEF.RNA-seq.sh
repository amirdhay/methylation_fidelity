TRIMMED_DIR=MEF_RNAseq/fastq/trimmed
OUT_DIR=MEF_RNAseq/mapped
SCRIPTF=map.commands.RNA-seq.sh
[ -f $SCRIPTF ] && rm $SCRIPTF

for read1f in ${TRIMMED_DIR}/SLX-204*r_1_val_1.fq.gz; do
	sampname=$(basename $read1f .fastq)
	read2f=$(echo $read1f | sed 's/r_1_val_1/r_2_val_2/')
	COMMAND="hisat2 -x /data/hisat2_indices/grcm38/genome \
		-1 $read1f \
		-2 $read2f \
		-S ${OUT_DIR}/$sampname".sam" \
		--rna-strandness RF \
		-p 4"
	echo "$COMMAND" >> $SCRIPTF
done
