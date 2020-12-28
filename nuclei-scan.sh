cat $1 | nuclei -t ~/Tools/nuclei-templates/files -c 800 -json -bulk-size 50 -o $1-nuclei-out -timeout 3 -exclude ~/Tools/nuclei-templates/workflows
cat $1-nuclei-out | jq -s . | ~/scripts/toElastic.py 'nuclei-money'
