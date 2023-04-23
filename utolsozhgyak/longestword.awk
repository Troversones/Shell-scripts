#!/usr/bin/gawk -f

BEGIN{
	max = 0
}

{
	for(i = 1;i <= NF;i++){
		if(length($i) > max){
			max = length($i);
			longestword = $i;
		}
	}
}

END {
	print longestword;
	print max;
}