conda activate MPRAflow
export  NXF_VER=22.10.0 
#nextflow run count.nf --help

#dir: where the input fastqs are
nextflow run count.nf   -w MPRA_count_hOPC/work --experiment-file "experiment_file_opc_seqRound1_311024_P32263.csv" --dir "Final_fastq_hOPC_IFNCtrl_2REPS" --outdir "MPRA_count_hOPC" --design "GCB_CRS_order_noverhang_KC_030924_corrected.fa" --labels GCB_CRS_order_noverhang_KC_030924_final.tsv  --name count_hOPC_P32263_311024_mapq1  --association "assoc_hOPC_250624_mapq1_fitered_coords_to_barcodes.pickle"  --umi-length 16

