function swap(int x, int y) -> (int a, int b)
    ensures a == y && b == x:
    return y, x

