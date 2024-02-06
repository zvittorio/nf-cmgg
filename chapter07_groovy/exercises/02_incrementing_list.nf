// Make a list of 10 values starting with 1. 
// Each new entry should be the sum of all values already present

list = [1]
for (int i = 1; i < 10; i++) {
    list.add(list.sum())
}

println list