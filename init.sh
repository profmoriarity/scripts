subfinder -d $1 -oJ -o dom.json | jq -s . | ~/scripts/toElastic.py 'subfinder'
cat dom.json | jq .host | awk -F'"' '{print $2}' | tee domains
