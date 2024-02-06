// Use the Channel.fromPath channel factory to create a channel 
// emitting all files with the suffix .fq in the ../data/ directory 
// and any subdirectory. Include any hidden files and print 
// the file names with the view operator.
// Hint: ** can be used to get all files from a subdirectory using
// glob pattern

ch1 = Channel.fromPath('../data/**')

process FOLDER {
    input:
    val x

    output:
    stdout

    script:
    """
    ls -la $x
    """
}

workflow {
    FOLDER(ch1).view()
}

// faster and more nextflow-y solution

ch1 = Channel.fromPath('../data/**', hidden:true)
ch1.view()