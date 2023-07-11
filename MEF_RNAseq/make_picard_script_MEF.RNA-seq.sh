MAPPED_DIR=MEF_RNAseq/mapped
OUT_DIR=MEF_RNAseq/mapped/picard_output
SCRIPTF=picard.commands.RNA-seq.sh
[ -f $SCRIPTF ] && rm $SCRIPTF

for bam in ${MAPPED_DIR}/SLX-204*.sorted.bam; do
	sampname=$(basename $bam .sorted.bam)
	COMMAND1="java -jar ~/bin/picard.jar MarkDuplicates \
		INPUT=$bam \
		OUTPUT=${OUT_DIR}/$sampname".mkdup.bam" \
		METRICS_FILE=${OUT_DIR}/$sampname".mkdup_metrics.txt" \
		CREATE_INDEX=true"
	COMMAND2="java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics \
		INPUT=$bam \
		OUTPUT=${OUT_DIR}/$sampname".alignment_metrics.txt" \
		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa"
	COMMAND3="java -jar ~/bin/picard.jar CollectInsertSizeMetrics \
		INPUT=$bam \
		OUTPUT=${OUT_DIR}/$sampname".insert_size.txt" \
		HISTOGRAM_FILE=${OUT_DIR}/$sampname".insert_size.pdf""
	echo -e "$COMMAND1\n$COMMAND2\n$COMMAND3" >> $SCRIPTF
done
