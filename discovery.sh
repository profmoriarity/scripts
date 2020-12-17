mkdir ffuf
for x in `cat $1`;
do
	domain=$(echo $x| awk -F"://" '{print $2}' | tr ':' '_')
	tsp ffuf -u $x/FUZZ -w $2 -t 200 -ac -of json -o ffuf/$domain.txt
	tsp bash ~/scripts/dis2el.sh ffuf/$domain.txt
done
