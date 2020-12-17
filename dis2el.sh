cat $1 | jq .results | ~/scripts/toElastic.py 'ffufnew'
