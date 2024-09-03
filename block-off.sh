curl -X PUT "https://api.cloudflare.com/client/v4/zones/583bbce66b384f099652f7df15e2001a/firewall/rules/583bbce66b384f099652f7df15e2001a" \
     -H "X-Auth-Email: trivu3718@gmail.com" \
     -H "X-Auth-Key: b658158ea2cdbd6fd1eb323dd1c9c37c01db1" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 1000,
     "paused": true,
     "description": "Block Quốc Tế",
     "filter": {
    "id": "b288a60dfe0f467dbe3a201e6a978dff",
    "expression": "(ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Windows NT\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (iPhone; CPU iPhone OS\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Linux; Android\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Macintosh; Intel Mac OS\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"})",
    "paused": false,
    "description": "Block Quốc Tế"
  }
  }'
