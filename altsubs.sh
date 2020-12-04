altdns -i domains -w ~/subs_words -o alt-domains
dnsx -silent -a -cname -resp -l alt-domains -r ~/resolvers.txt -o alt-resolved -t 300
