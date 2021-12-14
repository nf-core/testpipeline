#!/usr/bin/env nextflow
/*
========================================================================================
    nf-core/testpipeline
========================================================================================
    Github : https://github.com/nf-core/testpipeline
    Website: https://nf-co.re/testpipeline
    Slack  : https://nfcore.slack.com/channels/testpipeline
----------------------------------------------------------------------------------------
*/

nextflow.enable.dsl = 2

/*
========================================================================================
    GENOME PARAMETER VALUES
========================================================================================
*/

params.fasta = WorkflowMain.getGenomeAttribute(params, 'fasta')

/*
========================================================================================
    VALIDATE & PRINT PARAMETER SUMMARY
========================================================================================
*/

WorkflowMain.initialise(workflow, params, log)

/*
========================================================================================
    NAMED WORKFLOW FOR PIPELINE
========================================================================================
*/

include { TESTPIPELINE } from './workflows/testpipeline'

//
// WORKFLOW: Run main nf-core/testpipeline analysis pipeline
//
workflow NFCORE_TESTPIPELINE {
    TESTPIPELINE ()
}

/*
========================================================================================
    RUN ALL WORKFLOWS
========================================================================================
*/

//
// WORKFLOW: Execute a single named workflow for the pipeline
// See: https://github.com/nf-core/rnaseq/issues/619
//
workflow {
    NFCORE_TESTPIPELINE ()
}

/*
========================================================================================
    THE END
========================================================================================
*/
