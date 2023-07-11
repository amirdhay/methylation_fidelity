MAPPED_DIR=MEF_data/methy	
SCRIPTF=collate_methy.MEF.sh
[ -f $SCRIFTF ] && rm $SCRIPTF 
collate=../scripts/collate_bismark_methy_calls
for methyMinus in ${MAPPED_DIR}/CpG_OB_SLX-19089*_1_val_1_bismark_bt2_pe.mqual_ge10.txt.gz; do
	methyMinusCollate=$(echo $methyMinus | sed 's/_OB_/_minus_/')
	methyPlus=$(echo $methyMinus | sed 's/_OB_/_OT_/')
	methyPlusCollate=$(echo $methyPlus | sed 's/_OT_/_plus_/')
	COMMAND1="$collate -H $methyMinus > $methyMinusCollate"
	COMMAND2="$collate -H $methyPlus > $methyPlusCollate"
	echo -e "$COMMAND1\n$COMMAND2" >> $SCRIPTF
done
