// Write a script that creates a channel containing all read files matching the pattern 
// `../data/*_1.fq` followed by a process that concatenates them into a single file 
// and prints the first 10 lines.

files = Channel.fromPath('data/*_1.fq')

process CONCAT {
    debug true // without this it does not print. You need either this or output + .view() in workflow
    input:
    path x

    // output:
    // stdout

    script:
    """
    cat $x | head -10
    """
}

workflow {
    CONCAT(files).view()
}