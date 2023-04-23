#!/usr/bin/gawk -f

BEGIN {
    count = 0
}

/^([1-9][0-9]{0,2}|[1-9][0-9]{0,1}|[0-9])[a-z]+\.[^A-Z]$/ {
    count++
    print $0, count
}
