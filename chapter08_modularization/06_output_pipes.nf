include { SPLITLETTERS; CONVERTTOUPPER } from './modules.nf'

params.greeting = 'Hello world!'

workflow {
    Channel.of(params.greeting) | SPLITLETTERS | flatten | CONVERTTOUPPER | view
}

// only works if you have one input channel and one output channel