methods = ['prot', 'dna', 'rna']

process FOO {
    input:
    val x

    output:
    val x

    script:
    """
    echo $x > file
    """
}

workflow {
    receiver_ch = FOO(Channel.fromList(methods)) // fromList creates a queue channel
    receiver_ch.view { "Received: $it" }
}