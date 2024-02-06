// Write a process that is executed for each read file matching the pattern 
// `../data/*_1.fq and use the same `../data/small.fa` in each execution.

files = Channel.fromPath("../data/*_1.fq")
fasta = Channel.fromPath("../data/small.fa").first()

process SAMEONE {
    debug true

    input:
    path files
    path fasta

    script:
    """
    echo '$files and $fasta'
    """
}

workflow {
    SAMEONE(files, fasta)
}