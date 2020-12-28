cat domains | gau | tee urls
cat urls | httpx -status-code -content-length -title -threads 500 -timeout 3 -json | tee urls-status| jq -s . | ~/scripts/toElastic.py $2
cat urls-status | jq -s '.[]| select(."status-code" | contains(200)) | .url' | awk -F'"' '{print $2}' | 200-ok