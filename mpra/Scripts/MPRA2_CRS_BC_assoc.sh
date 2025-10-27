conda activate MPRAflow
export  NXF_VER=22.10.0 
#nextflow run association.nf --help


nextflow run association.nf -resume  -w MPRA_assoc_hOPC/work --fastq-insert "fastq_hOPC/OPC_S1_L001_R1_001.fastq.gz"  --fastq-insertPE "fastq_hOPC/OPC_S1_L001_R3_001.fastq.gz"  --fastq-bc "fastq_hOPC/OPC_S1_L001_R2_001.fastq.gz" --design "GCB_CRS_order_noverhang_KC_030924_corrected.fa" --labels GCB_CRS_order_noverhang_KC_030924_final.tsv --name assoc_hOPC_250624_mapq1 --mapq 1 --outdir output
