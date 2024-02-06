// Use the tab separation technique on the file 
// ../data/regions.tsv, but print just the first 
// column, and remove the header.

// Channel
//     .fromPath("./data/regions.tsv")
//     .splitCsv(sep: '\t', header: true)
//     .view { row -> "${row.patient_id}"}

// alternatively
Channel
    .fromPath("./data/regions.tsv")
    .splitCsv(sep: '\t', header: false, skip: 1)
    .view { row -> "${row[0]}"}