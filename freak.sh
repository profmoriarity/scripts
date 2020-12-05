parallel -j50 "httpx -path /{} -threads 200 -title -content-length -status-code -l alive" :::: $1
