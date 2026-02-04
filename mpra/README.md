## MS associated SNVs MPRA analysis in hOPCs and Bcells (Control and IFNG treated)


 ### CRE association 

1. Install MPRAflow nextflow version (https://mpraflow.readthedocs.io/en/latest/install.html) 

2. Prepare CRE fasta and labels files as explained in https://mpraflow.readthedocs.io/en/latest/association.html
```
#MPRA2_CRS_BC_assoc.sh
conda activate MPRAflow
export  NXF_VER=22.10.0 
#nextflow run association.nf --help

nextflow run association.nf -resume  -w MPRA_assoc/work --fastq-insert "fastq/plasmid_R1.fastq.gz"  --fastq-insertPE "fastq/plasmid_R3.fastq.gz"  --fastq-bc "fastq/plasmid_R2.fastq.gz" --design "Candidate_CRE_regions.fa" --labels Candidate_CRE_labels.tsv --name assoc_plasmid1_mapq1 --mapq 1 --outdir output
```
3. Use the association file as input for getting the RNA and DNA counts for each celltype and condition
```
conda activate MPRAflow
export  NXF_VER=22.10.0 

#dir: where the input fastqs are fastq_hOPC_Bcells_RNADNA_folder/
#output file from the association: *filtered_coords_to_barcodes.pickle
nextflow run count.nf   -w MPRA_count/work --experiment-file "experiment_file_opc_seqRound1_311024_P32263.csv" --dir "fastq_hOPC_Bcells_RNADNA_folder" --outdir "MPRA_count" --design "Candidate_CRE_regions.fa" --labels CRE_candidate_labels.tsv  --name count_hOPC_Bcells_mapq1  --association "assoc_plasmid1_mapq1_filtered_coords_to_barcodes.pickle"  --umi-length 16
```
 4. Build count tables for data analysis and statistical methods (differential activity and alellic comparisons)

 From the count_hOPC_Bcells_mapq1/ output use the raw count tables for each celltype condition. These can be loaded in R for downstream analyses.

 5. Then, we selected CRES of interest and retrieved the associated UMIs and the RNA and DNA counts.
[Selected CRES counts jupyter nb](Scripts/MPRA1_BC_per_CRS_EA.ipynb)
```
#MPRA1_BC_per_CRS_EA.ipynb
##CRE 1106 example
AAAAAAACTTATAGA,0,7
AAAAAAGATGAAATA,229,26
AAAAAGAAGAAACCA,0,6
AAAACCAAGAAGAGA,0,15
AAAACCAGAAGGGGG,3,0
AAAAGAAATAAGCGA,188,61
...
```


Processed data files in 10.5281/zenodo.17415989

Raw fastq files in ENA (XXXX)

