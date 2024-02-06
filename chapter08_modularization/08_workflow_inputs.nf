params.greeting = 'Hello world!'

include { SPLITLETTERS } from './modules.nf'
include { CONVERTTOUPPER } from './modules_emit.nf'

workflow MY_WORKFLOW {
    take:
    greeting // Needs to be a channel of one string per entry

    // you can add as many inputs as you want as long as these are passed to the workflow below

    main:
    SPLITLETTERS(greeting)
    CONVERTTOUPPER(SPLITLETTERS.out.flatten())
    CONVERTTOUPPER.out.upper.view { it }
}

workflow {
    MY_WORKFLOW(Channel.of(params.greeting)) // in case of multiple inputs (channels, values, whatever)
    // they will be passed sequentially to the workflow above
    // and in the workflow above you can give them any name you want
}