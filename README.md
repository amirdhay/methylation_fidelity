### Epigenetic inheritance is unfaithful at intermediately methylated CpG sites
---

#### Repository description
The directories `DNMT3a3bDKO_tcBSseq`, `MEF_RNAseq`, and `MEF_tcBSseq` contain the scripts used to process the sequencing data for the DNMT3a/3b DKO target capture bisulfite-sequencing (tcBS-seq), MEF RNA-seq, and MEF tcBS-seq experiments, respectively.

In each of the three directories is a set of "make" scripts called `make_....sh`, each of which creates a script for one step of the data processing. Examples of these scripts are provided in the `command_scripts` subdirectory; each contains one line per sample / sequencing replicate, which allows easy parallelization via `parallel -j ${threads} -L 1 <script.sh`.

The `scripts` directory contains some custom R, Python, and bash scripts used in the data processing steps.

#### R session info
