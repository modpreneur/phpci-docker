#!/bin/bash


echo "Elastic mapping inicialization"
echo "Delete :
"
curl -s -XDELETE 'necktie_elasticsearch_1:9200/necktie'
echo "
Mapping
"
curl -s -XPUT 'necktie_elasticsearch_1:9200/necktie' -d '
{"mappings":{"IpnLog":
{"properties":
 {"\u0000Necktie\\AppBundle\\Entity\\Ipn\u0000created":
 {"properties":{"date":{"type":"string","index":"not_analyzed"}}}}}
 ,"ExceptionLog":
 {"properties":{"\u0000Trinity\\FrameworkBundle\\Entity\\ExceptionLog\u0000created":{"properties":{"date":{"type":"string","index":"not_analyzed"}}}}}
 ,"AccessLog":
 {"properties":{"\u0000Necktie\\AppBundle\\Entity\\AccessLog\u0000created":{"properties":{"date":{"type":"string","index":"not_analyzed"}}}}}}}
'
echo ""
