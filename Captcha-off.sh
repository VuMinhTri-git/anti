curl -X PUT "https://api.cloudflare.com/client/v4/zones/45ed8ab9d25f1e87472043691373686f/firewall/rules/38e25501dea84f0a9790a1f092ca91c0" \
     -H "X-Auth-Email: trivu3718@gmail.com" \
     -H "X-Auth-Key: b658158ea2cdbd6fd1eb323dd1c9c37c01db1" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "managed_challenge",
     "priority": 2000,
     "paused": true,
     "description": "Captcha việt",
     "filter": {
    "id": "9bf149ab9ece4715b0fe1cfa0e36dfec",
    "expression": "(ip.geoip.country eq \"VN\" and http.user_agent contains \"Mozilla/5.0 (Linux; Android\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"}) or (ip.geoip.country eq \"VN\" and http.user_agent contains \"Mozilla/5.0 (iPhone; CPU iPhone OS \" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"}) or (ip.geoip.country eq \"VN\" and http.user_agent contains \"Mozilla/5.0 (Windows NT\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"}) or (ip.geoip.country eq \"VN\" and http.user_agent contains \"Mozilla/5.0 (Macintosh; Intel Mac OS\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"}) or (not http.user_agent contains \"Zalo\") or (not http.request.uri.path in {\"/api/v1/guest/telegram/webhook\"}) or (not http.request.uri.path in {\"/api/v1/guest/payment/notify\"}) or (not http.user_agent contains \"go-resty/2.7.0 (https://github.com/go-resty/resty)\") or (http.request.uri.path contains \"/api/v1/server/\" and not http.request.uri.query contains \"thaythanhapikey\")",
    "paused": false,
    "description": "Captcha việt"
  }
  }'
