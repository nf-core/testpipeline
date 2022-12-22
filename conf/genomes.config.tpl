/*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Nextflow config file for iGenomes paths
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Defines reference genomes using iGenome paths.
    Can be used by any config that customises the base path using:
        $params.igenomes_base / --igenomes_base
----------------------------------------------------------------------------------------
*/

params {
    // illumina iGenomes reference file paths
    genomes {
        'GRCh37' {
            fasta       = "refgenie://homo_sapiens-ensembl-grch37/fasta"
            bwa         = "refgenie://homo_sapiens-ensembl-grch37/bwa_index"
            bowtie2     = "refgenie://homo_sapiens-ensembl-grch37/bowtie2_index"
            star        = "refgenie://homo_sapiens-ensembl-grch37/star_index"
            bismark     = "refgenie://homo_sapiens-ensembl-grch37/bismark_index"
            gtf         = "refgenie://homo_sapiens-ensembl-grch37/gtf"
            bed12       = "refgenie://homo_sapiens-ensembl-grch37/bed12"
            readme      = "refgenie://homo_sapiens-ensembl-grch37/readme"
            mito_name   = "MT"
            macs_gsize  = "2.7e9"
            blacklist   = "refgenie://homo_sapiens-ensembl-grch37/blacklist"
        }
        'GRCh38' {
            fasta       = "${params.igenomes_base}/Homo_sapiens/NCBI/GRCh38/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Homo_sapiens/NCBI/GRCh38/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Homo_sapiens/NCBI/GRCh38/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Homo_sapiens/NCBI/GRCh38/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Homo_sapiens/NCBI/GRCh38/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Homo_sapiens/NCBI/GRCh38/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Homo_sapiens/NCBI/GRCh38/Annotation/Genes/genes.bed"
            mito_name   = "chrM"
            macs_gsize  = "2.7e9"
            blacklist   = "${projectDir}/assets/blacklists/hg38-blacklist.bed"
        }
        'GRCm38' {
            fasta       = "${params.igenomes_base}/Mus_musculus/Ensembl/GRCm38/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Mus_musculus/Ensembl/GRCm38/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Mus_musculus/Ensembl/GRCm38/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Mus_musculus/Ensembl/GRCm38/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Mus_musculus/Ensembl/GRCm38/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Mus_musculus/Ensembl/GRCm38/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Mus_musculus/Ensembl/GRCm38/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Mus_musculus/Ensembl/GRCm38/Annotation/README.txt"
            mito_name   = "MT"
            macs_gsize  = "1.87e9"
            blacklist   = "${projectDir}/assets/blacklists/GRCm38-blacklist.bed"
        }
        'TAIR10' {
            fasta       = "${params.igenomes_base}/Arabidopsis_thaliana/Ensembl/TAIR10/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Arabidopsis_thaliana/Ensembl/TAIR10/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Arabidopsis_thaliana/Ensembl/TAIR10/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Arabidopsis_thaliana/Ensembl/TAIR10/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Arabidopsis_thaliana/Ensembl/TAIR10/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Arabidopsis_thaliana/Ensembl/TAIR10/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Arabidopsis_thaliana/Ensembl/TAIR10/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Arabidopsis_thaliana/Ensembl/TAIR10/Annotation/README.txt"
            mito_name   = "Mt"
        }
        'EB2' {
            fasta       = "${params.igenomes_base}/Bacillus_subtilis_168/Ensembl/EB2/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Bacillus_subtilis_168/Ensembl/EB2/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Bacillus_subtilis_168/Ensembl/EB2/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Bacillus_subtilis_168/Ensembl/EB2/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Bacillus_subtilis_168/Ensembl/EB2/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Bacillus_subtilis_168/Ensembl/EB2/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Bacillus_subtilis_168/Ensembl/EB2/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Bacillus_subtilis_168/Ensembl/EB2/Annotation/README.txt"
        }
        'UMD3.1' {
            fasta       = "${params.igenomes_base}/Bos_taurus/Ensembl/UMD3.1/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Bos_taurus/Ensembl/UMD3.1/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Bos_taurus/Ensembl/UMD3.1/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Bos_taurus/Ensembl/UMD3.1/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Bos_taurus/Ensembl/UMD3.1/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Bos_taurus/Ensembl/UMD3.1/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Bos_taurus/Ensembl/UMD3.1/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Bos_taurus/Ensembl/UMD3.1/Annotation/README.txt"
            mito_name   = "MT"
        }
        'WBcel235' {
            fasta       = "${params.igenomes_base}/Caenorhabditis_elegans/Ensembl/WBcel235/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Caenorhabditis_elegans/Ensembl/WBcel235/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Caenorhabditis_elegans/Ensembl/WBcel235/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Caenorhabditis_elegans/Ensembl/WBcel235/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Caenorhabditis_elegans/Ensembl/WBcel235/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Caenorhabditis_elegans/Ensembl/WBcel235/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Caenorhabditis_elegans/Ensembl/WBcel235/Annotation/Genes/genes.bed"
            mito_name   = "MtDNA"
            macs_gsize  = "9e7"
        }
        'CanFam3.1' {
            fasta       = "${params.igenomes_base}/Canis_familiaris/Ensembl/CanFam3.1/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Canis_familiaris/Ensembl/CanFam3.1/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Canis_familiaris/Ensembl/CanFam3.1/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Canis_familiaris/Ensembl/CanFam3.1/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Canis_familiaris/Ensembl/CanFam3.1/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Canis_familiaris/Ensembl/CanFam3.1/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Canis_familiaris/Ensembl/CanFam3.1/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Canis_familiaris/Ensembl/CanFam3.1/Annotation/README.txt"
            mito_name   = "MT"
        }
        'GRCz10' {
            fasta       = "${params.igenomes_base}/Danio_rerio/Ensembl/GRCz10/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Danio_rerio/Ensembl/GRCz10/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Danio_rerio/Ensembl/GRCz10/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Danio_rerio/Ensembl/GRCz10/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Danio_rerio/Ensembl/GRCz10/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Danio_rerio/Ensembl/GRCz10/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Danio_rerio/Ensembl/GRCz10/Annotation/Genes/genes.bed"
            mito_name   = "MT"
        }
        'BDGP6' {
            fasta       = "${params.igenomes_base}/Drosophila_melanogaster/Ensembl/BDGP6/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Drosophila_melanogaster/Ensembl/BDGP6/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Drosophila_melanogaster/Ensembl/BDGP6/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Drosophila_melanogaster/Ensembl/BDGP6/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Drosophila_melanogaster/Ensembl/BDGP6/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Drosophila_melanogaster/Ensembl/BDGP6/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Drosophila_melanogaster/Ensembl/BDGP6/Annotation/Genes/genes.bed"
            mito_name   = "M"
            macs_gsize  = "1.2e8"
        }
        'EquCab2' {
            fasta       = "${params.igenomes_base}/Equus_caballus/Ensembl/EquCab2/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Equus_caballus/Ensembl/EquCab2/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Equus_caballus/Ensembl/EquCab2/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Equus_caballus/Ensembl/EquCab2/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Equus_caballus/Ensembl/EquCab2/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Equus_caballus/Ensembl/EquCab2/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Equus_caballus/Ensembl/EquCab2/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Equus_caballus/Ensembl/EquCab2/Annotation/README.txt"
            mito_name   = "MT"
        }
        'EB1' {
            fasta       = "${params.igenomes_base}/Escherichia_coli_K_12_DH10B/Ensembl/EB1/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Escherichia_coli_K_12_DH10B/Ensembl/EB1/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Escherichia_coli_K_12_DH10B/Ensembl/EB1/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Escherichia_coli_K_12_DH10B/Ensembl/EB1/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Escherichia_coli_K_12_DH10B/Ensembl/EB1/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Escherichia_coli_K_12_DH10B/Ensembl/EB1/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Escherichia_coli_K_12_DH10B/Ensembl/EB1/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Escherichia_coli_K_12_DH10B/Ensembl/EB1/Annotation/README.txt"
        }
        'Galgal4' {
            fasta       = "${params.igenomes_base}/Gallus_gallus/Ensembl/Galgal4/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Gallus_gallus/Ensembl/Galgal4/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Gallus_gallus/Ensembl/Galgal4/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Gallus_gallus/Ensembl/Galgal4/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Gallus_gallus/Ensembl/Galgal4/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Gallus_gallus/Ensembl/Galgal4/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Gallus_gallus/Ensembl/Galgal4/Annotation/Genes/genes.bed"
            mito_name   = "MT"
        }
        'Gm01' {
            fasta       = "${params.igenomes_base}/Glycine_max/Ensembl/Gm01/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Glycine_max/Ensembl/Gm01/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Glycine_max/Ensembl/Gm01/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Glycine_max/Ensembl/Gm01/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Glycine_max/Ensembl/Gm01/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Glycine_max/Ensembl/Gm01/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Glycine_max/Ensembl/Gm01/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Glycine_max/Ensembl/Gm01/Annotation/README.txt"
        }
        'Mmul_1' {
            fasta       = "${params.igenomes_base}/Macaca_mulatta/Ensembl/Mmul_1/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Macaca_mulatta/Ensembl/Mmul_1/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Macaca_mulatta/Ensembl/Mmul_1/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Macaca_mulatta/Ensembl/Mmul_1/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Macaca_mulatta/Ensembl/Mmul_1/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Macaca_mulatta/Ensembl/Mmul_1/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Macaca_mulatta/Ensembl/Mmul_1/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Macaca_mulatta/Ensembl/Mmul_1/Annotation/README.txt"
            mito_name   = "MT"
        }
        'IRGSP-1.0' {
            fasta       = "${params.igenomes_base}/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Annotation/Genes/genes.bed"
            mito_name   = "Mt"
        }
        'CHIMP2.1.4' {
            fasta       = "${params.igenomes_base}/Pan_troglodytes/Ensembl/CHIMP2.1.4/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Pan_troglodytes/Ensembl/CHIMP2.1.4/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Pan_troglodytes/Ensembl/CHIMP2.1.4/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Pan_troglodytes/Ensembl/CHIMP2.1.4/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Pan_troglodytes/Ensembl/CHIMP2.1.4/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Pan_troglodytes/Ensembl/CHIMP2.1.4/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Pan_troglodytes/Ensembl/CHIMP2.1.4/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Pan_troglodytes/Ensembl/CHIMP2.1.4/Annotation/README.txt"
            mito_name   = "MT"
        }
        'Rnor_5.0' {
            fasta       = "${params.igenomes_base}/Rattus_norvegicus/Ensembl/Rnor_5.0/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Rattus_norvegicus/Ensembl/Rnor_5.0/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Rattus_norvegicus/Ensembl/Rnor_5.0/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Rattus_norvegicus/Ensembl/Rnor_5.0/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Rattus_norvegicus/Ensembl/Rnor_5.0/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Rattus_norvegicus/Ensembl/Rnor_5.0/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Rattus_norvegicus/Ensembl/Rnor_5.0/Annotation/Genes/genes.bed"
            mito_name   = "MT"
        }
        'Rnor_6.0' {
            fasta       = "${params.igenomes_base}/Rattus_norvegicus/Ensembl/Rnor_6.0/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Rattus_norvegicus/Ensembl/Rnor_6.0/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Rattus_norvegicus/Ensembl/Rnor_6.0/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Rattus_norvegicus/Ensembl/Rnor_6.0/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Rattus_norvegicus/Ensembl/Rnor_6.0/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Rattus_norvegicus/Ensembl/Rnor_6.0/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Rattus_norvegicus/Ensembl/Rnor_6.0/Annotation/Genes/genes.bed"
            mito_name   = "MT"
        }
        'R64-1-1' {
            fasta       = "${params.igenomes_base}/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Annotation/Genes/genes.bed"
            mito_name   = "MT"
            macs_gsize  = "1.2e7"
        }
        'EF2' {
            fasta       = "${params.igenomes_base}/Schizosaccharomyces_pombe/Ensembl/EF2/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Schizosaccharomyces_pombe/Ensembl/EF2/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Schizosaccharomyces_pombe/Ensembl/EF2/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Schizosaccharomyces_pombe/Ensembl/EF2/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Schizosaccharomyces_pombe/Ensembl/EF2/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Schizosaccharomyces_pombe/Ensembl/EF2/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Schizosaccharomyces_pombe/Ensembl/EF2/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Schizosaccharomyces_pombe/Ensembl/EF2/Annotation/README.txt"
            mito_name   = "MT"
            macs_gsize  = "1.21e7"
        }
        'Sbi1' {
            fasta       = "${params.igenomes_base}/Sorghum_bicolor/Ensembl/Sbi1/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Sorghum_bicolor/Ensembl/Sbi1/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Sorghum_bicolor/Ensembl/Sbi1/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Sorghum_bicolor/Ensembl/Sbi1/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Sorghum_bicolor/Ensembl/Sbi1/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Sorghum_bicolor/Ensembl/Sbi1/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Sorghum_bicolor/Ensembl/Sbi1/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Sorghum_bicolor/Ensembl/Sbi1/Annotation/README.txt"
        }
        'Sscrofa10.2' {
            fasta       = "${params.igenomes_base}/Sus_scrofa/Ensembl/Sscrofa10.2/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Sus_scrofa/Ensembl/Sscrofa10.2/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Sus_scrofa/Ensembl/Sscrofa10.2/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Sus_scrofa/Ensembl/Sscrofa10.2/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Sus_scrofa/Ensembl/Sscrofa10.2/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Sus_scrofa/Ensembl/Sscrofa10.2/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Sus_scrofa/Ensembl/Sscrofa10.2/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Sus_scrofa/Ensembl/Sscrofa10.2/Annotation/README.txt"
            mito_name   = "MT"
        }
        'AGPv3' {
            fasta       = "${params.igenomes_base}/Zea_mays/Ensembl/AGPv3/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Zea_mays/Ensembl/AGPv3/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Zea_mays/Ensembl/AGPv3/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Zea_mays/Ensembl/AGPv3/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Zea_mays/Ensembl/AGPv3/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Zea_mays/Ensembl/AGPv3/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Zea_mays/Ensembl/AGPv3/Annotation/Genes/genes.bed"
            mito_name   = "Mt"
        }
        'hg38' {
            fasta       = "${params.igenomes_base}/Homo_sapiens/UCSC/hg38/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Homo_sapiens/UCSC/hg38/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Homo_sapiens/UCSC/hg38/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Homo_sapiens/UCSC/hg38/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Homo_sapiens/UCSC/hg38/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Homo_sapiens/UCSC/hg38/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Homo_sapiens/UCSC/hg38/Annotation/Genes/genes.bed"
            mito_name   = "chrM"
            macs_gsize  = "2.7e9"
            blacklist   = "${projectDir}/assets/blacklists/hg38-blacklist.bed"
        }
        'hg19' {
            fasta       = "${params.igenomes_base}/Homo_sapiens/UCSC/hg19/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Homo_sapiens/UCSC/hg19/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Homo_sapiens/UCSC/hg19/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Homo_sapiens/UCSC/hg19/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Homo_sapiens/UCSC/hg19/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Homo_sapiens/UCSC/hg19/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Homo_sapiens/UCSC/hg19/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Homo_sapiens/UCSC/hg19/Annotation/README.txt"
            mito_name   = "chrM"
            macs_gsize  = "2.7e9"
            blacklist   = "${projectDir}/assets/blacklists/hg19-blacklist.bed"
        }
        'mm10' {
            fasta       = "${params.igenomes_base}/Mus_musculus/UCSC/mm10/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Mus_musculus/UCSC/mm10/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Mus_musculus/UCSC/mm10/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Mus_musculus/UCSC/mm10/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Mus_musculus/UCSC/mm10/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Mus_musculus/UCSC/mm10/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Mus_musculus/UCSC/mm10/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Mus_musculus/UCSC/mm10/Annotation/README.txt"
            mito_name   = "chrM"
            macs_gsize  = "1.87e9"
            blacklist   = "${projectDir}/assets/blacklists/mm10-blacklist.bed"
        }
        'bosTau8' {
            fasta       = "${params.igenomes_base}/Bos_taurus/UCSC/bosTau8/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Bos_taurus/UCSC/bosTau8/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Bos_taurus/UCSC/bosTau8/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Bos_taurus/UCSC/bosTau8/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Bos_taurus/UCSC/bosTau8/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Bos_taurus/UCSC/bosTau8/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Bos_taurus/UCSC/bosTau8/Annotation/Genes/genes.bed"
            mito_name   = "chrM"
        }
        'ce10' {
            fasta       = "${params.igenomes_base}/Caenorhabditis_elegans/UCSC/ce10/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Caenorhabditis_elegans/UCSC/ce10/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Caenorhabditis_elegans/UCSC/ce10/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Caenorhabditis_elegans/UCSC/ce10/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Caenorhabditis_elegans/UCSC/ce10/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Caenorhabditis_elegans/UCSC/ce10/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Caenorhabditis_elegans/UCSC/ce10/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Caenorhabditis_elegans/UCSC/ce10/Annotation/README.txt"
            mito_name   = "chrM"
            macs_gsize  = "9e7"
        }
        'canFam3' {
            fasta       = "${params.igenomes_base}/Canis_familiaris/UCSC/canFam3/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Canis_familiaris/UCSC/canFam3/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Canis_familiaris/UCSC/canFam3/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Canis_familiaris/UCSC/canFam3/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Canis_familiaris/UCSC/canFam3/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Canis_familiaris/UCSC/canFam3/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Canis_familiaris/UCSC/canFam3/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Canis_familiaris/UCSC/canFam3/Annotation/README.txt"
            mito_name   = "chrM"
        }
        'danRer10' {
            fasta       = "${params.igenomes_base}/Danio_rerio/UCSC/danRer10/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Danio_rerio/UCSC/danRer10/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Danio_rerio/UCSC/danRer10/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Danio_rerio/UCSC/danRer10/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Danio_rerio/UCSC/danRer10/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Danio_rerio/UCSC/danRer10/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Danio_rerio/UCSC/danRer10/Annotation/Genes/genes.bed"
            mito_name   = "chrM"
            macs_gsize  = "1.37e9"
        }
        'dm6' {
            fasta       = "${params.igenomes_base}/Drosophila_melanogaster/UCSC/dm6/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Drosophila_melanogaster/UCSC/dm6/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Drosophila_melanogaster/UCSC/dm6/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Drosophila_melanogaster/UCSC/dm6/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Drosophila_melanogaster/UCSC/dm6/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Drosophila_melanogaster/UCSC/dm6/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Drosophila_melanogaster/UCSC/dm6/Annotation/Genes/genes.bed"
            mito_name   = "chrM"
            macs_gsize  = "1.2e8"
        }
        'equCab2' {
            fasta       = "${params.igenomes_base}/Equus_caballus/UCSC/equCab2/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Equus_caballus/UCSC/equCab2/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Equus_caballus/UCSC/equCab2/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Equus_caballus/UCSC/equCab2/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Equus_caballus/UCSC/equCab2/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Equus_caballus/UCSC/equCab2/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Equus_caballus/UCSC/equCab2/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Equus_caballus/UCSC/equCab2/Annotation/README.txt"
            mito_name   = "chrM"
        }
        'galGal4' {
            fasta       = "${params.igenomes_base}/Gallus_gallus/UCSC/galGal4/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Gallus_gallus/UCSC/galGal4/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Gallus_gallus/UCSC/galGal4/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Gallus_gallus/UCSC/galGal4/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Gallus_gallus/UCSC/galGal4/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Gallus_gallus/UCSC/galGal4/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Gallus_gallus/UCSC/galGal4/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Gallus_gallus/UCSC/galGal4/Annotation/README.txt"
            mito_name   = "chrM"
        }
        'panTro4' {
            fasta       = "${params.igenomes_base}/Pan_troglodytes/UCSC/panTro4/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Pan_troglodytes/UCSC/panTro4/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Pan_troglodytes/UCSC/panTro4/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Pan_troglodytes/UCSC/panTro4/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Pan_troglodytes/UCSC/panTro4/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Pan_troglodytes/UCSC/panTro4/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Pan_troglodytes/UCSC/panTro4/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Pan_troglodytes/UCSC/panTro4/Annotation/README.txt"
            mito_name   = "chrM"
        }
        'rn6' {
            fasta       = "${params.igenomes_base}/Rattus_norvegicus/UCSC/rn6/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Rattus_norvegicus/UCSC/rn6/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Rattus_norvegicus/UCSC/rn6/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Rattus_norvegicus/UCSC/rn6/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Rattus_norvegicus/UCSC/rn6/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Rattus_norvegicus/UCSC/rn6/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Rattus_norvegicus/UCSC/rn6/Annotation/Genes/genes.bed"
            mito_name   = "chrM"
        }
        'sacCer3' {
            fasta       = "${params.igenomes_base}/Saccharomyces_cerevisiae/UCSC/sacCer3/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Saccharomyces_cerevisiae/UCSC/sacCer3/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Saccharomyces_cerevisiae/UCSC/sacCer3/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Saccharomyces_cerevisiae/UCSC/sacCer3/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Saccharomyces_cerevisiae/UCSC/sacCer3/Sequence/BismarkIndex/"
            readme      = "${params.igenomes_base}/Saccharomyces_cerevisiae/UCSC/sacCer3/Annotation/README.txt"
            mito_name   = "chrM"
            macs_gsize  = "1.2e7"
        }
        'susScr3' {
            fasta       = "${params.igenomes_base}/Sus_scrofa/UCSC/susScr3/Sequence/WholeGenomeFasta/genome.fa"
            bwa         = "${params.igenomes_base}/Sus_scrofa/UCSC/susScr3/Sequence/BWAIndex/version0.6.0/"
            bowtie2     = "${params.igenomes_base}/Sus_scrofa/UCSC/susScr3/Sequence/Bowtie2Index/"
            star        = "${params.igenomes_base}/Sus_scrofa/UCSC/susScr3/Sequence/STARIndex/"
            bismark     = "${params.igenomes_base}/Sus_scrofa/UCSC/susScr3/Sequence/BismarkIndex/"
            gtf         = "${params.igenomes_base}/Sus_scrofa/UCSC/susScr3/Annotation/Genes/genes.gtf"
            bed12       = "${params.igenomes_base}/Sus_scrofa/UCSC/susScr3/Annotation/Genes/genes.bed"
            readme      = "${params.igenomes_base}/Sus_scrofa/UCSC/susScr3/Annotation/README.txt"
            mito_name   = "chrM"
        }
    }
}
