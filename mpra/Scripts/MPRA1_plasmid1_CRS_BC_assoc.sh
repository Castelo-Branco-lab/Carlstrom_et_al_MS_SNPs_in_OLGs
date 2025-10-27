conda activate MPRAflow

export  NXF_VER=22.10.0 

#plasmid1 library association 1st list of CRS
nextflow run association.nf   -w Plasmid1_round_291123/work_assoc_1001 --fastq-insert "P28515_1001_S1_L001_R1_001.fastq.gz"  --fastq-insertPE "P28515_1001_S1_L001_R3_001.fastq.gz"  --fastq-bc "P28515_1001_S1_L001_R2_001.fastq.gz" --design "CRS_FINAL221208_wo_overhangs_corrected.fa" --labels CRS_design_label_nooverhangs_final.tsv --name assoc_basic_NoOver_P28515_1001_mapq --mapq 1 --outdir Plasmid1_round_291123/output
