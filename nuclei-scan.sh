#nuclei scan for domains

if [ $1 == "domains" ] ; then
    cat $2 | nuclei -t ~/Tools/nuclei-templates/cves -t ~/Tools/nuclei-templates/files -t ~/Tools/nuclei-templates/tokens -t ~/Tools/nuclei-templates/generic-detections -t ~/Tools/nuclei-templates/security-misconfiguration -t ~/Tools/nuclei-templates/subdomain-takeover -t ~/Tools/nuclei-templates/vulnerabilities  -c 800 -json -bulk-size 50 -o $2-nuclei-out -timeout 3
	cat $2-nuclei-out | jq -s . | ~/scripts/toElastic.py $3
fi

#nuclei scan for urls

if [ $1 == "urls" ] ; then
    cat $2 | nuclei -t ~/Tools/nuclei-templates/tokens -t ~/Tools/nuclei-templates/generic-detections -t ~/Tools/nuclei-templates/security-misconfiguration -t ~/Tools/nuclei-templates/vulnerabilities  -c 800 -json -bulk-size 50 -o $2-nuclei-out -timeout 3
	cat $2-nuclei-out | jq -s . | ~/scripts/toElastic.py $3
fi
