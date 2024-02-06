// Write a process which executes for each read file matching the pattern 
// `../data/*_1.fq` and repeat the same task with both salmon and kallisto.

ch1 = Channel.fromPath("../data/*_1.fq")
align = ["salmon", "kallisto"]

process ALIGN {
    input:
    path reads
    each align

    output:
    stdout

    """
    echo $align $reads
    """
}


workflow{
    ALIGN(ch1, align).view()
}