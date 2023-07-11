BAM_DIR=DKO_data/mapped	
SCRIPTF=sort_index_mapq.commands.DKO.sh
[ -f $SCRIPTF ] && rm $SCRIPTF

for bam in ${BAM_DIR}/SLX-20416*_1_val_1_bismark_bt2_pe.bam; do
	sortedname=$(echo $bam | sed 's/.bam/.sorted.bam/')
	mqualname=$(echo $bam | sed 's/.bam/.mqual_ge10.bam/')
	COMMAND1="samtools sort -@ 8 -m 1G -o $sortedname $bam"
	COMMAND2="samtools index $sortedname"
	COMMAND3="samtools view -q 10 -b $bam -o $mqualname"
	echo -e "$COMMAND1\n$COMMAND2\n$COMMAND3" >> $SCRIPTF
done



