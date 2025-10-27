#PLASMID 1 ROUND2 2 times (rep1 and rep2) and round1 rep3

conda activate MPRAflow

export  NXF_VER=22.10.0 



nextflow run count.nf   -w  plas1_r2_and_r1/work/  --experiment-file "experiment_KC_test2_plas1_r2_2times_r1.csv" --dir "Final_runs_fastqs/"  --outdir "plas1_r2_and_r1_100625/out_p1_r2r1/"   --design "/cfs/klemming/projects/supr/uppstore2017150/eneritz/MPRA_P_1002_plas4/CRS_FINAL221208_wo_overhangs_corrected.fa" --labels CRS_design_label_nooverhangs_final.tsv  --name count_hOPC_plas1_round2_2times_r1_rerun2025   --association "assoc_basic_NoOver_P28515_1001_mapq_filtered_coords_to_barcodes.pickle"  --umi-length 16  ##  --mpranalyze  ### add  if mpranalyze count tables need it

