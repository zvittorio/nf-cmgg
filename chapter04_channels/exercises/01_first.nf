// Use the .first() operator to create a value channel 
// from ch2 so that all 3 elements of ch1 are consumed.

ch1 = Channel.of(1, 2, 3)
ch2 = Channel.of(1)
// ch2 = Channel.value(1) // option 1 

process SUM {
    input:
    val x
    val y

    output:
    stdout

    script:
    """
    echo \$(($x+$y))
    """
}

workflow {
    SUM(ch1, ch2.first()).view() // option 2: first takes the first value of a channel
    // and creates a value channel from it
    // because .first outputs a value channel
}