// Use fromPath to create a channel emitting the fastq files 
// matching the pattern ../data/*.fq, then use map to return 
// a pair containing the file name and the file path. 
// Finally, use view to print the resulting channel.

// Channel
//     .fromPath("data/*.fq")
//     .map { it -> [it.toString().split("/")[-1], it[-1] ]}
//     .view()

// better, because taking advantage of the functions related to fromPath
Channel
    .fromPath("data/*.fq")
    .map { file -> [file.name, file] }
    .view()