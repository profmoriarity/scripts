echo "[+] Fetching subdomains"
#subfinder -d $1 > domains
echo "[+] Checking http status"
bash ~/scripts/alive.sh

bash ~/scripts/dnscheck.sh
bash ~/scripts/iplist.sh
bash ~/scripts/ports.sh
bash ~/scripts/altsubs.sh
bash ~/scripts/alt-httpx.sh
bash ~/scripts/200_status.sh
bash ~/scripts/urls.sh
