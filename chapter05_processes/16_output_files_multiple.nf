process SPLITLETTERS {
    output:
    path 'chunk_*'

    script:
    """
    printf 'Hola' | split -b 1 - chunk_
    """
}

workflow {
    letters = SPLITLETTERS()
    letters
        .flatMap() // creates a new channel entry from 
        // each item in the list
        .view { "File: ${it.name} => ${it.text}" } 
}