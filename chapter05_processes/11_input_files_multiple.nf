reads = Channel.fromPath('data/*.fq')

process FOO {
    debug true

    input:
    path sample

    script:
    """
    ls -lh $sample
    """
}

workflow {
    FOO(reads.collect()) // the collect operator collects all the items emitted by a channel to a List and return the resulting object as a sole emission
    // this means that if you put them in a process they will all be symlink
    // which is more memory efficient
}