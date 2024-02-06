Channel
    .of('foo', 'bar', 'baz')
    .view()

// The message can be customized with a closure
Channel
    .of('foo', 'bar', 'baz')
    .view { "- $it" }
    .view() // by adding this it will hsow you how the channel looks like at that point in the operation
    // useful for debugging