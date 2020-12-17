cat $2 | nuclei -t $1 -c 1000 -json | jq -s .| ~/scripts/toElastic.py 'nuclei'
