cat domains | httpx -silent -threads 500 -status-code -title -content-length | tee domains-httpx
cat domains-httpx | awk '{print $1}' > alive
