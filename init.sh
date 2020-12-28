subfinder -d $1 -oJ -o dom | jq -s . | ~/scripts/toElastic.py $2
cat dom | jq .host | awk -F'"' '{print $2}' | tee domains