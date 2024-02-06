params.data = 'le monde'

process BAZ {
    debug true

    shell: // a synonym for 'script'
    '''
    X='Bonjour'
    echo $X !{params.data}
    '''
}

workflow {
    BAZ()
}