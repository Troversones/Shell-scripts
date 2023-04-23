#!/usr/bin/gawk -f

function is_hcenter(n) {
    if (n < 1) return 0
    m = int(sqrt((n - 1) / 3))
    if (n == 3*m*(m+1)+1) return 1
    return 0
}

BEGIN {
    FS = " "
}

{
    for (i = 1; i <= NF; i++) {
        if (is_hcenter($i)) {
            print $i
        }
    }
}
