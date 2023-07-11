java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext01.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext01.HGNHGDRXY.s_1.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext01.HGNHGDRXY.s_1.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext01.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext01.HGNHGDRXY.s_1.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext01.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext01.HGNHGDRXY.s_1.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext01.HGNHGDRXY.s_1.r_1_val_1.insert_size.pdf
java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext02.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext02.HGNHGDRXY.s_1.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext02.HGNHGDRXY.s_1.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext02.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext02.HGNHGDRXY.s_1.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext02.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext02.HGNHGDRXY.s_1.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext02.HGNHGDRXY.s_1.r_1_val_1.insert_size.pdf
java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext03.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext03.HGNHGDRXY.s_1.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext03.HGNHGDRXY.s_1.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext03.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext03.HGNHGDRXY.s_1.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext03.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext03.HGNHGDRXY.s_1.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext03.HGNHGDRXY.s_1.r_1_val_1.insert_size.pdf
java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext04.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext04.HGNHGDRXY.s_1.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext04.HGNHGDRXY.s_1.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext04.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext04.HGNHGDRXY.s_1.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext04.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext04.HGNHGDRXY.s_1.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext04.HGNHGDRXY.s_1.r_1_val_1.insert_size.pdf
java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext05.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext05.HGNHGDRXY.s_1.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext05.HGNHGDRXY.s_1.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext05.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext05.HGNHGDRXY.s_1.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext05.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext05.HGNHGDRXY.s_1.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext05.HGNHGDRXY.s_1.r_1_val_1.insert_size.pdf
java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext06.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext06.HGNHGDRXY.s_1.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext06.HGNHGDRXY.s_1.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext06.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext06.HGNHGDRXY.s_1.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext06.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext06.HGNHGDRXY.s_1.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext06.HGNHGDRXY.s_1.r_1_val_1.insert_size.pdf
java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext07.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext07.HGNHGDRXY.s_1.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext07.HGNHGDRXY.s_1.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext07.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext07.HGNHGDRXY.s_1.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext07.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext07.HGNHGDRXY.s_1.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext07.HGNHGDRXY.s_1.r_1_val_1.insert_size.pdf
java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext08.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext08.HGNHGDRXY.s_1.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext08.HGNHGDRXY.s_1.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext08.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext08.HGNHGDRXY.s_1.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20401.NEBNext08.HGNHGDRXY.s_1.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext08.HGNHGDRXY.s_1.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20401.NEBNext08.HGNHGDRXY.s_1.r_1_val_1.insert_size.pdf
java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext01.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext01.HGNHGDRXY.s_2.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext01.HGNHGDRXY.s_2.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext01.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext01.HGNHGDRXY.s_2.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext01.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext01.HGNHGDRXY.s_2.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext01.HGNHGDRXY.s_2.r_1_val_1.insert_size.pdf
java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext02.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext02.HGNHGDRXY.s_2.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext02.HGNHGDRXY.s_2.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext02.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext02.HGNHGDRXY.s_2.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext02.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext02.HGNHGDRXY.s_2.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext02.HGNHGDRXY.s_2.r_1_val_1.insert_size.pdf
java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext03.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext03.HGNHGDRXY.s_2.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext03.HGNHGDRXY.s_2.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext03.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext03.HGNHGDRXY.s_2.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext03.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext03.HGNHGDRXY.s_2.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext03.HGNHGDRXY.s_2.r_1_val_1.insert_size.pdf
java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext04.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext04.HGNHGDRXY.s_2.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext04.HGNHGDRXY.s_2.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext04.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext04.HGNHGDRXY.s_2.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext04.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext04.HGNHGDRXY.s_2.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext04.HGNHGDRXY.s_2.r_1_val_1.insert_size.pdf
java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext05.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext05.HGNHGDRXY.s_2.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext05.HGNHGDRXY.s_2.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext05.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext05.HGNHGDRXY.s_2.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext05.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext05.HGNHGDRXY.s_2.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext05.HGNHGDRXY.s_2.r_1_val_1.insert_size.pdf
java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext06.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext06.HGNHGDRXY.s_2.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext06.HGNHGDRXY.s_2.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext06.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext06.HGNHGDRXY.s_2.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext06.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext06.HGNHGDRXY.s_2.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext06.HGNHGDRXY.s_2.r_1_val_1.insert_size.pdf
java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext07.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext07.HGNHGDRXY.s_2.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext07.HGNHGDRXY.s_2.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext07.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext07.HGNHGDRXY.s_2.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext07.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext07.HGNHGDRXY.s_2.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext07.HGNHGDRXY.s_2.r_1_val_1.insert_size.pdf
java -jar ~/bin/picard.jar MarkDuplicates 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext08.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext08.HGNHGDRXY.s_2.r_1_val_1.mkdup.bam 		METRICS_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext08.HGNHGDRXY.s_2.r_1_val_1.mkdup_metrics.txt 		CREATE_INDEX=true
java -jar ~/bin/picard.jar CollectAlignmentSummaryMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext08.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext08.HGNHGDRXY.s_2.r_1_val_1.alignment_metrics.txt 		REFERENCE_SEQUENCE=/data/genomes/mm10/mm10.fa
java -jar ~/bin/picard.jar CollectInsertSizeMetrics 		INPUT=MEF_RNAseq/mapped/SLX-20402.NEBNext08.HGNHGDRXY.s_2.r_1_val_1.sorted.bam 		OUTPUT=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext08.HGNHGDRXY.s_2.r_1_val_1.insert_size.txt 		HISTOGRAM_FILE=MEF_RNAseq/mapped/picard_output/SLX-20402.NEBNext08.HGNHGDRXY.s_2.r_1_val_1.insert_size.pdf