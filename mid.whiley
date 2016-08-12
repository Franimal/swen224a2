function mid(int x,int y, int z) -> (int r)
    requires x != y && x != z && y != z
    ensures r == x || r == y || r == z
    ensures some {i in 0 .. 2 | [x, y, z][i] == r}
    ensures some {i in 0 .. 2 | [x, y, z][i] < r}
    ensures some {i in 0 .. 2 | [x, y, z][i] > r}:
    //
    int[] nums = [x, y, z]
    int min = x
    int max = y
    int mid = z
    int j = 0

    while j < 2 where j >= 0:
        if nums[j] <= min:
            min = nums[j]
        if nums[j] >= max:
            max = nums[j]
        else:
            mid = nums[j]

    return mid
           