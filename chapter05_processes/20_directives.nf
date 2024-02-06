process FOO {
    cpus 2 // set cpus
    memory 1.GB // watch out for the special syntax: n.unit
    time 3.h // similar syntax: amount of time the process will run before failing due to timelimit
    disk 20.GB // same syntax as above
    tag "foo" // name your process to make it easier
    container 'ubuntu:20.04' // to define a docker/singularity container. As a good practice, always use the version
    // of the container explicitly
    
    // A list of all directives can be found here: 
    // https://www.nextflow.io/docs/latest/process.html#directives

    script:
    """
    echo your_command --this --that
    """
}

workflow {
    FOO()
}