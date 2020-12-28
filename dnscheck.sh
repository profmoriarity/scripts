dnsx -silent -a -cname -resp -l $1 -r ~/scripts/resolvers.txt -o alt-resolved -t 300 -o dns-json -json
cat dns-json | jq -s . | ~/scripts/toElastic.py dns-$2
