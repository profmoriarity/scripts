cat alt-resolved | awk '{print $1}' | httpx -silent -threads 200 -status-code -title -content-length | tee alt-httpx
