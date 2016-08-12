function sum3(int x, int y, int z) -> (int r)
requires x >=0 && y >= 0 && z >= 0
ensures r >= 0
ensures r == x+y+z:
    //
    return x + y + z
