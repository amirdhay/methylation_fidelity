READ_DIR=DKO_data/fastq/trimmed
MAPPED_DIR=DKO_data/mapped	
MULTICORE=2
SCRIPTF=map.commands.DKO.sh
[ -f $SCRIPTF ] && rm $SCRIPTF

for read1f in ${READ_DIR}/*_val_1.fq.gz; do
	read2f=$(echo $read1f | sed 's/_val_1/_val_2/' | sed 's/_1_/_2_/')
	
	COMMAND="bismark --multicore $MULTICORE /data/genomes/mm10/ -o $MAPPED_DIR -1 $read1f -2 $read2f"
	echo "$COMMAND" >> $SCRIPTF
done
