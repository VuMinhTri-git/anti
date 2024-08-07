curl -X PUT "https://api.cloudflare.com/client/v4/zones/dc4829573a8be18a7f2de65921259f9e/firewall/rules/45ed8ab9d25f1e87472043691373686f" \
     -H "X-Auth-Email: trivu3718@gmail.com" \
     -H "X-Auth-Key: b658158ea2cdbd6fd1eb323dd1c9c37c01db1" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 500,
     "paused": true,
     "description": "Block quốc tế",
     "filter": {
    "id": "b15cd6141671454b924c56eec3b9d713",
    "expression": "(ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Windows NT\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"}) or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (iPhone; CPU iPhone OS\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"}) or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Linux; Android\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"}) or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Macintosh; Intel Mac OS\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"})",
    "paused": false,
    "description": "Block quốc tế"
  }
  }'
