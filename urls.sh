cat domains | gau | tee urls
cat urls | httpx -status-code -content-length -title -threads 500 -timeout 3 | tee urls-status
