# nextflow-velocyto
Our velocyto repo but implemented in Nextflow

There are two branches:

`main` - this branch contains the script for running STARsolo on the FARM using Nextflow command line

`nextflow-tower` - this branch conrains the script for running STARsolo on the FARM using Nextflow Tower

## Contents of Repo:
* `main.nf` - the Nextflow pipeline that executes velocyto
* `nextflow.config` - the configuration script that allows the processes to be submitted to IBM LSF on Sanger's HPC and ensures correct environment is set via singularity container (this is an absolute path). Global default parameters are also set in this file and some contain absolute paths.
* `examples/samples.txt` - samplefile tsv containing 3 fields: sampleID, path to BAM file, path to barcodes tsv.gz file (The order of these files is important!). These paths can be IRODs paths or local paths.
* `examples/RESUME-velocyto` - an example run script that executes the pipeline it has 2 hardcoded arguments: `/path/to/sample/file` and `/path/to/config/file` that need to be changed based on your local set up.

## Pipeline Arguments:
* `--SAMPLEFILE` - The path to the sample file provided to the pipeline. This is a tab-separated file with one sample per line. Each line should contain a sample id, path to bam file, path to barcodes file (in that order!)."
* `--outdir` - The path to where the results will be saved.
* `--barcodes_on_irods` - Tells pipeline whether to look for the gzipped barcodes file on IRODS or the FARM (default yes means look on IRODS).
* `--bam_on_irods` - Tells pipeline whether to look for the bam file on IRODS or the FARM (default yes means look on IRODS).
* `--bam_has_umis` - Tells the pipeline whether the BAM files have UMIs (default yes means BAM contains UMIs).
* `--GTF` - Tells pipeline which genome GTF to use (by default GRCh38 2020A is used). This argument is hardcoded and needs to be changed to your local path to the GTF file.
* `--RMSK` - Tells pipeline which mask file to use (by default GRCh38 is used). This argument is hardcoded and needs to be changed to your local path to the mask file.
