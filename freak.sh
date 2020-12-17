parallel -j$3 "httpx -path /{} -threads $2 -title -content-length -status-code -l brute" :::: $1
