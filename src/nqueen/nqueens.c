int g_count = 0;
int all = 0;

int mypow(int v, int n){
    int res = v;

    for (int i = 1; i < n; i++){
        res *= v;
    }

    return res;
}

void backtrackingBitmap(int cols, int ld, int rd){
    int pos = ~(cols | ld | rd) & all;
    while( pos > 0 ) {
        int bit = -pos & pos;
        pos = pos ^ bit;

        backtrackingBitmap((cols | bit), (ld | bit) << 1, (rd | bit) >> 1);
    }
    if (cols == all) {
        g_count++;
    }
}

int countNQueensSolutions(int n){
    all = mypow(2, n) - 1;
    g_count = 0;
    backtrackingBitmap(0, 0, 0);
    return g_count;
}
