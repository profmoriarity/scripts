cat domains | httpx -silent -threads 500 -json -response-in-json | tee  domains-httpx| jq -s . | ~/scripts/toElastic.py 'httpx'
cat domains-httpx| jq .url | awk -F'"' '{print $2}' > alive
