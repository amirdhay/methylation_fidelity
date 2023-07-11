TXT_DIR=DKO_data/mbias 	
SCRIPTF=mbias_txt2png.DKO.sh
[ -f $SCRIPTF ] && rm $SCRIPTF

for txt in ${TXT_DIR}/*_1_val_1_bismark_bt2_pe.mqual_ge10.M-bias.txt; do
	COMMAND="../scripts/make_Mbias_plot $txt"
	echo "$COMMAND" >> $SCRIPTF
done
