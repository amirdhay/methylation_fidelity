READ_DIR=DKO_data/fastq/raw
TRIMMED_DIR=DKO_data/fastq/trimmed
SCRIPTF=trim.commands.sh
[ -f $SCRIPTF ] && rm $SCRIPTF

for read1f in ${READ_DIR}/SLX-20416.SX*_1.fq.gz; do
	sampname=$(basename $read1f .fastq)
	read2f=$(echo $read1f | sed 's/_1/_2/2')
	COMMAND="trim_galore -o ${TRIMMED_DIR} --trim-n --paired --fastqc_args \"--outdir ${TRIMMED_DIR}/fastqc\" $read1f $read2f"
	echo "$COMMAND" >> $SCRIPTF
done
