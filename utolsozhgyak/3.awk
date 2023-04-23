#!/usr/bin/gawk -f

BEGIN {
	FS=","
}

NR>1 {
	team[$2] = team[$2] $1
}

END {
	for (t in team) {print t ": " team[t]}
}