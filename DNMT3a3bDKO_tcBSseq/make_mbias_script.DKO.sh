#generate Mbias plots
BAM_DIR=DKO_data/mapped
OUT_DIR=DKO_data/mbias
SCRIPTF=mbias_plots.DKO.sh
[ -f $SCRIPTF ] && rm $SCRIPTF

for bam in ${BAM_DIR}/SLX-20416*_1_val_1_bismark_bt2_pe.mqual_ge10.bam; do
	COMMAND="bismark_methylation_extractor $bam --mbias_only -p --merge_non_CpG --parallel 4 --comprehensive --gzip -o ${OUT_DIR}"
	echo "$COMMAND" >> $SCRIPTF
done



