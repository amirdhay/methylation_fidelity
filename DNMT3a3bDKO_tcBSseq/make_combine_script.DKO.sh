MAPPED_DIR=DKO_data/methy
SCRIPTF=combine_methy.DKO.sh
[ -f $SCRIFTF ] && rm $SCRIPTF 
combine=../scripts/combine_bismark_stranded_methy
for methyPlusCollate in ${MAPPED_DIR}/CpG_plus_SLX-20416*_1_val_1_bismark_bt2_pe.mqual_ge10.txt; do
	methyMinusCollate=$(echo $methyPlusCollate | sed 's/_plus_/_minus_/')
	methyCombine=$(echo $methyPlusCollate | sed 's/_plus_/_combine_/')
	COMMAND="$combine $methyPlusCollate $methyMinusCollate > $methyCombine"
	echo "$COMMAND" >> $SCRIPTF
done
