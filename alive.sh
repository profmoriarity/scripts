cat $1 | httpx -silent -threads 800 -json | tee  $1-httpx| jq -s . | ~/scripts/toElastic.py $2
cat $1-httpx| jq .url | awk -F'"' '{print $2}' > $1-alive
