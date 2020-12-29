mkdir $1
cd $1
bash ~/scripts/init.sh $1 domains-$1
bash ~/scripts/alive.sh domains httpx-$1
bash ~/scripts/dnscheck.sh domains dns-$1
bash ~/scripts/iplist.sh
bash ~/scripts/ports.sh ips ports-$1
bash ~/scripts/altsubs.sh
bash ~/scripts/alt-httpx.sh
bash ~/scripts/200_status.sh
bash ~/scripts/urls.sh dummy urls-$1
bash ~/scripts/nuclei-scan.sh domains httpx nuclei-domains-$1
bash ~/scripts/nuclei-scan.sh urls 200-ok nuclei-urls-$1
bash ~/scripts/green.sh domains-$1
bash ~/scripts/green.sh httpx-$1
bash ~/scripts/green.sh dns-$1
bash ~/scripts/green.sh ports-$1
bash ~/scripts/green.sh urls-$1
bash ~/scripts/green.sh nuclei-domains-$1
bash ~/scripts/green.sh nuclei-urls-$1
