cat $1 | httpx -silent -threads 800 -json | tee  httpx-json | jq -s . | ~/scripts/toElastic.py $2
cat httpx-json | jq .url | awk -F'"' '{print $2}' > httpx
