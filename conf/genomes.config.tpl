/*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Nextflow config file for Genome paths
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Defines reference genomes using Genome paths.
    Can be populated using the Refgenie populater command:
        refgenie populater --file conf/genomes.config.tpl > conf/genomes.config
----------------------------------------------------------------------------------------
*/

params {
    // illumina iGenomes reference file paths
    genomes {
        'GRCh37' {
            fasta       = "refgenie://homo_sapiens-ensembl-grch37/fasta"
            bwa         = "refgenie://homo_sapiens-ensembl-grch37/bwa_index:0.7.17"
            bowtie2     = "refgenie://homo_sapiens-ensembl-grch37/bowtie2_index"
            star        = "refgenie://homo_sapiens-ensembl-grch37/star_index"
            bismark     = "refgenie://homo_sapiens-ensembl-grch37/bismark_bt2_index"
            gtf         = "--://homo_sapiens-ensembl-grch37/gtf"
            bed12       = "--://homo_sapiens-ensembl-grch37/bed12"
            readme      = "--://homo_sapiens-ensembl-grch37/readme"
            mito_name   = "MT"
            macs_gsize  = "2.7e9"
            blacklist   = "--://homo_sapiens-ensembl-grch37/blacklist"
        }
    }
}
