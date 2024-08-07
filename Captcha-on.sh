curl -X PUT "https://api.cloudflare.com/client/v4/zones/dc4829573a8be18a7f2de65921259f9e/firewall/rules/45ed8ab9d25f1e87472043691373686f" \
     -H "X-Auth-Email: trivu3718@gmail.com" \
     -H "X-Auth-Key: b658158ea2cdbd6fd1eb323dd1c9c37c01db1" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "managed_challenge",
     "priority": 564,
     "paused": false,
     "description": "Managed Challenge Việt Nam",
     "filter": {
    "id": "bf916bc3ff084f32b44d9ffac1fec3da",
    "expression": "(http.user_agent contains \"Mozilla/5.0 (Macintosh; Intel Mac OS\" and http.user_agent ne \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0\" and http.user_agent ne \"CheckHost (https://check-host.net/)\" and ip.geoip.country eq \"VN\" and http.request.version in {\"HTTP/1.1\" \"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (http.user_agent contains \"Mozilla/5.0 (Linux; Android\" and http.user_agent ne \"CheckHost (https://check-host.net/)\" and http.user_agent ne \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0\" and ip.geoip.country eq \"VN\" and http.request.version in {\"HTTP/1.1\" \"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (http.user_agent contains \"Mozilla/5.0 (iPhone; CPU iPhone OS\" and http.user_agent ne \"CheckHost (https://check-host.net/)\" and http.user_agent ne \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0\" and ip.geoip.country eq \"VN\" and http.request.version in {\"HTTP/1.1\" \"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (http.user_agent contains \"Mozilla/5.0 (Windows NT\" and http.user_agent ne \"CheckHost (https://check-host.net/)\" and http.user_agent ne \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0\" and ip.geoip.country eq \"VN\" and http.request.version in {\"HTTP/1.1\" \"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (http.user_agent ne \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0\" and http.request.version eq \"HTTP/1.1\" and http.request.method eq \"HEAD\") or (http.user_agent ne \"CheckHost (https://check-host.net/)\" and http.request.version eq \"HTTP/1.1\" and http.request.method eq \"GET\")",
    "paused": false,
    "description": "Managed Challenge Việt Nam"
  }
  }'
