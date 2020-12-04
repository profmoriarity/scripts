masscan -p$(~/scripts/top-1000-ports.sh) $(for x in `cat ips`; do echo -n " "$x; done) -oL masscanout --rate 1000000
cat masscanout | awk '{print $4":"$3}' | tee ports
cat ports | httpx -threads 400 -title -content-length -status-code -content-length | tee ports-alive
