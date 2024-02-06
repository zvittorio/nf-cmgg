params.data = 'World'

process FOO {
    debug true

    script:
    def country = "from Belgium" // this can't be changed when running the nextflow script
    """
    echo Hello $params.data $country
    """
}

workflow {
    FOO()
}