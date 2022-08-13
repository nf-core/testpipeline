//
// This file holds several functions specific to the workflow/testpipeline.nf in the nf-core/testpipeline pipeline
//

class WorkflowTestpipeline {

    //
    // Check and validate parameters
    //
    public static void initialise(params, log) {
        genomeExistsError(params, log)

        if (!params.fasta) {
            log.error "Genome fasta file not specified with e.g. '--fasta genome.fa' or via a detectable config file."
            System.exit(1)
        }
    }

    //
    // Get workflow summary for MultiQC
    //
    public static String paramsSummaryMultiqc(workflow, summary) {
        String summary_section = ''
        for (group in summary.keySet()) {
            def group_params = summary.get(group)  // This gets the parameters of that particular group
            if (group_params) {
                summary_section += "    <p style=\"font-size:110%\"><b>$group</b></p>\n"
                summary_section += "    <dl class=\"dl-horizontal\">\n"
                for (param in group_params.keySet()) {
                    summary_section += "        <dt>$param</dt><dd><samp>${group_params.get(param) ?: '<span style=\"color:#999999;\">N/A</a>'}</samp></dd>\n"
                }
                summary_section += '    </dl>\n'
            }
        }

        String yaml_file_text  = "id: '${workflow.manifest.name.replace('/', '-')}-summary'\n"
        yaml_file_text        += "description: ' - this information is collected when the pipeline is started.'\n"
        yaml_file_text        += "section_name: '${workflow.manifest.name} Workflow Summary'\n"
        yaml_file_text        += "section_href: 'https://github.com/${workflow.manifest.name}'\n"
        yaml_file_text        += "plot_type: 'html'\n"
        yaml_file_text        += 'data: |\n'
        yaml_file_text        += "${summary_section}"
        return yaml_file_text
    }

    public static String methodsDescriptionText(nextflow, workflow, custom_text) {
        String yaml_file_text  = "id: '${workflow.manifest.name.replace('/', '-')}-methods-description'\n"

        yaml_file_text        += "description: 'Suggested methods description text of pipeline usage'\n"
        yaml_file_text        += "section_name: '${ workflow.manifest.name } Methods Description'\n"
        yaml_file_text        += "section_href: 'https://github.com/${workflow.manifest.name}'\n"
        yaml_file_text        += "plot_type: 'html'\n"
        yaml_file_text        += 'data: |\n'

        if ( !custom_text ) {
            yaml_file_text        += '  <b>Methods</b>'
            // TODO PIPELINE PUBLICATION CITATION; CONDITIONAL ZENODO DOI
            yaml_file_text        += "  <p>Data was processed using the nf-core (Ewels et al. 2020) pipeline ${workflow.manifest.name} v${workflow.manifest.version} (doi:${workflow.manifest.doi}).</p>\n"
            yaml_file_text        += "  <p>The pipeline was executed with Nextflow (v${nextflow.version}; Di Tommaso et al. 2017) with the following command:</p>\n"
            yaml_file_text        += "  <pre><code>${workflow.commandLine}</code></pre>\n"
            yaml_file_text        += '  <b>References</b>\n'
            yaml_file_text        += '  <ul>\n'
            // TODO INSERT AND EVALUTE PIPELINE PUBLICATION REFERENCE
            yaml_file_text        += '  <li>Di Tommaso, P., Chatzou, M., Floden, E. W., Barja, P. P., Palumbo, E., & Notredame, C. (2017). Nextflow enables reproducible computational workflows. Nature Biotechnology, 35(4), 316–319. https://doi.org/10.1038/nbt.3820 </li>\n'
            yaml_file_text        += '  <li>Ewels, P. A., Peltzer, A., Fillinger, S., Patel, H., Alneberg, J., Wilm, A., Garcia, M. U., Di Tommaso, P., & Nahnsen, S. (2020). The nf-core framework for community-curated bioinformatics pipelines. Nature Biotechnology, 38(3), 276–278. https://doi.org/10.1038/s41587-020-0439-x </li>\n'
            yaml_file_text        += '  </ul>\n'
            yaml_file_text        += '  <blockquote>\n'
            yaml_file_text        += '  <b>Notes:</b><br>\n'
            yaml_file_text        += '  <ul>\n'
            yaml_file_text        += '  <li>If present, make sure to replace the pipeline DOI with correct reference information.</li>\n'
            yaml_file_text        += '  <li>The command above does not include parameters contained in any configs pr profiles that may have been used. Ensure the config file is also uploaded with your publication.</li>\n'
            yaml_file_text        += "  <li>You should also cite all software used within this run. Check the \"Software Versions\" of this report to get version information.</li>\n"
            yaml_file_text        += '  </ul>\n'
            yaml_file_text        += '  </blockquote>\n'
        } else {
            // don't know if this is good nextflow/groovy practise...
            // For docs: must be HTML only (not MultiQC headers), and each line must be two space indented
            // Does not evalute variables such as `${workflow.manifest.name} - could look into: https://stackoverflow.com/a/29156385/11502856
            yaml_file_text        += new File(custom_text).text
        }

        return yaml_file_text
    }

    //
    // Exit pipeline if incorrect --genome key provided
    //
    private static void genomeExistsError(params, log) {
        if (params.genomes && params.genome && !params.genomes.containsKey(params.genome)) {
            log.error '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n' +
                "  Genome '${params.genome}' not found in any config files provided to the pipeline.\n" +
                '  Currently, the available genome keys are:\n' +
                "  ${params.genomes.keySet().join(', ')}\n" +
                '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
            System.exit(1)
        }
    }

}
