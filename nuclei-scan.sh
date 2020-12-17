cat alive | nuclei -t ~/Tools/nuclei-templates -debug -c 500 -json -bulk-size 50 -o nuclei-out -timeout 3 -exclude ~/Tools/nuclei-templates/workflows
cat nuclei-out | jq -s . | ~/scripts/toElastic.py 'nuclei'
