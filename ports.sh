masscan -p$(~/scripts/top-1000-ports.sh) $(for x in `cat ips`; do echo -n " "$x; done) -oL masscanout --rate 1000000
cat masscanout | awk '{print $4":"$3}' | tee ports
cat masscanout| grep -v "end\|masscan"| sort -u | jq -s --raw-input --raw-output 'split("\n") | map(split(" "))| map({"status": .[0],"type": .[1], "port": .[2], "ip": .[3]})' | ~/scripts/toElastic.py $2
cat ports | httpx -threads 400 -title -content-length -status-code -content-length | tee ports-alive
