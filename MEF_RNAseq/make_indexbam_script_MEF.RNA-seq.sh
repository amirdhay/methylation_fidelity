MAPPED_DIR=MEF_RNAseq/mapped
SCRIPTF=indexbam.commands.RNA-seq.sh
[ -f $SCRIPTF ] && rm $SCRIPTF

for bam in ${MAPPED_DIR}/SLX-204*.sorted.bam; do
	COMMAND="samtools index $bam"
	echo "$COMMAND" >> $SCRIPTF
done
