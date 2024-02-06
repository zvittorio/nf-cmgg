params.greeting = 'Hello world!'

include { SPLITLETTERS } from './modules.nf'
include { CONVERTTOUPPER } from './modules_emit.nf'


workflow MY_WORKFLOW {
    greeting_ch = Channel.of(params.greeting)
    SPLITLETTERS(greeting_ch)
    CONVERTTOUPPER(SPLITLETTERS.out.flatten())
    CONVERTTOUPPER.out.upper.view { it }
}

workflow { // main workflow where everythin starts, later broken down into smaller sub-workflows
    MY_WORKFLOW()
}