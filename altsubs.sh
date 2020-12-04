altdns -i domains -w ~/scripts/subs_words -o alt-domains
dnsx -silent -a -cname -resp -l alt-domains -r ~/scripts/resolvers.txt -o alt-resolved -t 300
