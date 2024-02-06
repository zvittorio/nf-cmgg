Channel
    .of(1, 3, 5, 7)

// The .. notation can be used to specify all values between two integers
Channel
    .of(1..22, 'X', 'Y') // .. means the range
    .view()