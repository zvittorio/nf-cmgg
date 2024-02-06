sequences = Channel.fromPath("${projectDir}/data/*.tfa")
methods = ['regular', 'espresso', 'psicoffee']

process ALIGNSEQUENCES {
    debug true

    input: // Not often used
    path seq
    each mode // like a for loop in python: for each 'mode' that is passed, do this...

    script:
    """
    echo t_coffee -in $seq -mode $mode
    """
}

workflow {
    ALIGNSEQUENCES(sequences, methods)
}

// Time for exercise 01, 02 & 03