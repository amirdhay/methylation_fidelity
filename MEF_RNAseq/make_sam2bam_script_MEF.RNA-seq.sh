MAPPED_DIR=MEF_RNAseq/mapped
SCRIPTF=sam2bam.commands.RNA-seq.sh
[ -f $SCRIPTF ] && rm $SCRIPTF

for sam in ${MAPPED_DIR}/SLX-204*.sam; do
	sampname=$(basename $sam fq.gz.sam)
	COMMAND="samtools view -b -@ 6 $sam > ${MAPPED_DIR}/$sampname"bam""
	echo "$COMMAND" >> $SCRIPTF
done
