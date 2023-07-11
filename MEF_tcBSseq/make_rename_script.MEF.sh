MAPPED_DIR=MEF_data/methy/
SCRIPTF=rename.MEF.sh
[ -f $SCRIFTF ] && rm $SCRIPTF 
for methyPlusCollate in ${MAPPED_DIR}/CpG_plus_SLX-19089*_1_val_1_bismark_bt2_pe.mqual_ge10.txt.gz; do
	methyMinusCollate=$(echo $methyPlusCollate | sed 's/_plus_/_minus_/')
	methyPlusCollateCorrect=$(echo $methyPlusCollate | sed 's/.txt.gz/.txt/')
	methyMinusCollateCorrect=$(echo $methyMinusCollate | sed 's/.txt.gz/.txt/')
	COMMAND1="mv $methyPlusCollate $methyPlusCollateCorrect"
	COMMAND2="mv $methyMinusCollate $methyMinusCollateCorrect"
	echo -e "$COMMAND1\n$COMMAND2" >> $SCRIPTF
done
### IMPORTANT: The resulting txt.gz files from collate are not in fact GZIPPED - need to rename to .txt only
