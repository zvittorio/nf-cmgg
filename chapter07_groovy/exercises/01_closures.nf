// Convert the values in the given list so that all values
// lower or equal to 10 are multiplied by themselves. Other values
// should stay the same. Use a closure assigned to a variable for this.

list = [1,50,43,5,9]

small = { it * it }

for (int elem : list) {
    if (elem <= 10)
        println(small(elem))
    else 
        println elem
}


// alternatively
square = { it <= 10 ? it * it : it }
square = { if(it <= 10) it*it else it }
list = [1,50,43,5,9].collect(square)
