curl -X PUT "https://api.cloudflare.com/client/v4/zones/45ed8ab9d25f1e87472043691373686f/firewall/rules/583bbce66b384f099652f7df15e2001a" \
     -H "X-Auth-Email: trivu3718@gmail.com" \
     -H "X-Auth-Key: b658158ea2cdbd6fd1eb323dd1c9c37c01db1" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 1000,
     "paused": true,
     "description": "Block ngoại",
     "filter": {
    "id": "b288a60dfe0f467dbe3a201e6a978dff",
    "expression": "(ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Linux; Android\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (iPhone; CPU iPhone OS \" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Windows NT\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Macintosh; Intel Mac OS\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (not http.user_agent contains \"Zalo\") or (not http.request.uri.path in {\"/api/v1/guest/telegram/webhook\"}) or (not http.request.uri.path in {\"/api/v1/guest/payment/notify\"}) or (not http.user_agent contains \"go-resty/2.7.0 (https://github.com/go-resty/resty)\") or (http.request.uri.path contains \"/api/v1/server/\" and not http.request.uri.query contains \"thaythanhapikey\")",
    "paused": false,
    "description": "Block ngoại"
  }
  }'
