#!/usr/bin/python3
import requests, json, os
from elasticsearch import Elasticsearch
import sys

es = Elasticsearch([{'host': '172.105.5.96', 'port': '9200'}])
if sys.argv is not 0:
	indx = sys.argv[1]
else:
	indx = 'random'
data = sys.stdin.read()
#print(data)
i = 0
body = json.loads(data)
for obj in body:
	es.index(index=indx, ignore=400, doc_type='docket', body=obj)
	i = i +1
