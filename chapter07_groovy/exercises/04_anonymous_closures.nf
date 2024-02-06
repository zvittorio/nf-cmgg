// For each file print out the extension followed by
// how long the file name is without the extension
// Use an anonymous closure for this.
// e.g. test.txt => txt 4

// Anonymous closures
// result = 0 
// values = ["China": 1, "India": 2, "USA": 3] 
// values.keySet().each { result += values[it] } 
// println result

files = [
    "test.txt",
    "dad.png",
    "taxes.xlsx",
    "super_awesome_pipeline.nf",
    "I.love.dots.txt",
    "get_out_of_my_swamp.shrek"
]

result = files.each {[it.tokenize(".")[-1], it.size()] } 

println result