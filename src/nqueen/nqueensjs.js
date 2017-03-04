var countNQueens = function(n) {
    var all = Math.pow(2, n) - 1;
    var solutionCount = 0;

    var findSolutions = function (cols, ld, rd) {

        var pos = ~(cols | ld | rd) & all;

        while (pos > 0) {
            var bit = -pos & pos;
            pos = pos ^ bit;

            findSolutions((cols | bit), (ld | bit) << 1, (rd | bit) >> 1);

        }
        if (cols === all) {
            solutionCount++;
        }
    };
    findSolutions(0, 0, 0);

    return solutionCount;
}
