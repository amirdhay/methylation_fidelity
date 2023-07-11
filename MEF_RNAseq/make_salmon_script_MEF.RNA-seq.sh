TRIMMED_DIR=MEF_RNAseq/fastq/trimmed
OUT_DIR=MEF_RNAseq/mapped/salmon_output
SCRIPTF=salmon.commands.RNA-seq.sh
[ -f $SCRIPTF ] && rm $SCRIPTF

for read1f in ${TRIMMED_DIR}/SLX-204*r_1_val_1.fq.gz; do
	sampname=$(basename $read1f .fq.gz)
	read2f=$(echo $read1f | sed 's/r_1_val_1/r_2_val_2/')
	COMMAND="salmon quant \
	       	-p 4 \
		-i /data/salmon_indices/salmon_index \
		--gcBias \
		-l A \
		-1 $read1f \
		-2 $read2f \
		-o ${OUT_DIR}/$sampname"
	echo "$COMMAND" >> $SCRIPTF
done
