dnsx -silent -a -cname -resp -l $1 -r ~/scripts/resolvers.txt -t 300 -o dns-json -json
cat dns-json | jq -s . | ~/scripts/toElastic.py $2