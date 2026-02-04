## MS associated SNVs MPRA analysis in hOPCs and Bcells (Control and IFNG treated)


 ### Run CRE association in MPRA1 and MPRA2

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

```
 run RNA DNA counts per associated CRS in MPRA1 and MPRA2

 Build count tables for data analysis and statistical methods (differential activity and alellic comparisons)


Processed data files in 10.5281/zenodo.17415989

Raw fastq files in ENA (XXXX)

