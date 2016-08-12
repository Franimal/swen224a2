type nats is (int[] items) where all {i in 0.. |items| | items[i] >= 0}

function checkArray(nats natArray) -> (int n)
    requires |natArray| > 0
    requires all {i in 0.. |natArray| | natArray[i] >= 0}
    ensures n >= 0:
    
    return natArray[0]