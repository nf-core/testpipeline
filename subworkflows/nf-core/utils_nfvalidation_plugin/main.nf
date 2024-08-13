//
// Subworkflow that uses the nf-validation plugin to render help text and parameter summary
//

/*
========================================================================================
    IMPORT NF-VALIDATION PLUGIN
========================================================================================
*/

// include { paramsHelp         } from 'plugin/nf-schema'
include { paramsSummaryLog   } from 'plugin/nf-schema'
include { validateParameters } from 'plugin/nf-schema'

/*
========================================================================================
    SUBWORKFLOW DEFINITION
========================================================================================
*/

workflow UTILS_NFVALIDATION_PLUGIN {

    take:
    validate_params  // boolean: validate parameters
    schema_filename  //    path: JSON schema file, null to use default value

    main:

    log.debug "Using schema file: ${schema_filename}"

    //
    // Print parameter summary to stdout
    //
    log.info paramsSummaryLog(workflow, parameters_schema: schema_filename)

    //
    // Validate parameters relative to the parameter JSON schema
    //
    if (validate_params){
        validateParameters(parameters_schema: schema_filename)
    }

    emit:
    dummy_emit = true
}
