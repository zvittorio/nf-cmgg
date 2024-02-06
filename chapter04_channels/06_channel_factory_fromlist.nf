// Creates a queue channel from a list
list = ['hello', 'world', 'hello', 'world', 'hello', 'world', 'hello', 'world']
Channel
    .fromList(list) // creates a channel from a list
    .view()