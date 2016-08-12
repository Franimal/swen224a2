function pourSmall2Large(int smallJug, int largeJug) -> 
                        (int smallJugAfter, int largeJugAfter)
// The small jug holds between 0 and 3 litres (before)
requires ...
// The large jug holds between 0 and 5 litres (before)
requires ...
// The small jug holds between 0 and 3 litres (after)
ensures ...
// The large jug holds between 0 and 5 litres (after)
ensures ...
// The amount in both jugs is unchanged by this function
ensures ...
// Afterwards, either the small jug is empty or the large jug is full
ensures ...:
    if smallJug + largeJug <= 5:
        // indicates we're emptying the small jug
        largeJug = largeJug + smallJug
        smallJug = 0
    else:
        // indicates we're filling up the large jug    
        smallJug = smallJug - (5 - largeJug)
        largeJug = 5
    return smallJug, largeJug
