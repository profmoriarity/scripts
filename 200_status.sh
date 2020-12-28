cat domains-alive | httpx -threads 500 -path /asdwekjda  -status-code > status
cat status | grep -v 200  | awk -F"/asd" '{print $1}'| tee brute
