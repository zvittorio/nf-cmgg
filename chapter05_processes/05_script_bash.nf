process FOO {
    def FOO="bar" // you can also define an internal variable
    // but as long as you use the escape '\' sign inside the double quotes (below)
    // it will use the BASH variable

    debug true

    script: // Double quotes => allows use of external variables
    """
    FOO=Foo
    echo "This process does \$FOO"
    """
}

process BAR {
    debug true

    script: // Single quotes => allows only use of local bash scope variables
    '''
    BAR=Bar
    echo "This process does $BAR"
    '''
}

workflow {
    FOO()
    //BAR()
}