// Branch allows you to split a channel into multiple
// queue channels based on a condition

Channel
    .of(1, 2, 3, 40, 50)
    .branch { // split a channel into two
        small: it < 10
        large: it >= 10
    }
    .set { result }

result.small.view { "$it is small" }
result.large.view { "$it is large" }