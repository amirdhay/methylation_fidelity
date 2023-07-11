BAM_DIR=DKO_data/mapped
OUT_DIR=DKO_data/methy
SCRIPTF=methyl_extract.DKO.sh
[ -f $SCRIPTF ] && rm $SCRIPTF

for bam in ${BAM_DIR}/SLX-20416*_1_val_1_bismark_bt2_pe.mqual_ge10.bam; do
	COMMAND="/data/software/Bismark_v0.20.0/bismark_methylation_extractor_no_CH $bam --ignore 2 --ignore_r2 4 --ignore_3prime_r2 2 -p --merge_non_CpG --parallel 6  --gzip -o ${OUT_DIR}"
	echo "$COMMAND" >> $SCRIPTF
done
