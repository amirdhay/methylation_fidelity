#generate Mbias plots
BAM_DIR=MEF_data/mapped
OUT_DIR=~/agilent_ESC_MEF_clonal_eval/mbias
SCRIPTF=mbias_plots.MEF.sh
[ -f $SCRIPTF ] && rm $SCRIPTF

for bam in ${BAM_DIR}/SLX-19089*_1_val_1_bismark_bt2_pe.mqual_ge10.bam; do
	COMMAND="bismark_methylation_extractor $bam --mbias_only -p --merge_non_CpG --parallel 4 --comprehensive --gzip -o ${OUT_DIR}"
	echo "$COMMAND" >> $SCRIPTF
done



