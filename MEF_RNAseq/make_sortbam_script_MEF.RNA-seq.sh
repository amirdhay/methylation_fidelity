MAPPED_DIR=MEF_RNAseq/mapped
SCRIPTF=sortbam.commands.RNA-seq.sh
[ -f $SCRIPTF ] && rm $SCRIPTF

for bam in ${MAPPED_DIR}/SLX-204*.bam; do
	sampname=$(basename $bam .bam)
	COMMAND="samtools sort -@ 4  $bam > ${MAPPED_DIR}/$sampname".sorted.bam""
	echo "$COMMAND" >> $SCRIPTF
done
