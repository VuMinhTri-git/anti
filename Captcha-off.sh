curl -X PUT "https://api.cloudflare.com/client/v4/zones/45ed8ab9d25f1e87472043691373686f/firewall/rules/38e25501dea84f0a9790a1f092ca91c0" \
     -H "X-Auth-Email: trivu3718@gmail.com" \
     -H "X-Auth-Key: b658158ea2cdbd6fd1eb323dd1c9c37c01db1" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "managed_challenge",
     "priority": 2000,
     "paused": true,
     "description": "Managed Challenge Việt Nam",
     "filter": {
    "id": "9bf149ab9ece4715b0fe1cfa0e36dfec",
    "expression": "(http.user_agent contains \"Mozilla/5.0 (Macintosh; Intel Mac OS\" and ip.geoip.country eq \"VN\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5) or (http.user_agent contains \"Mozilla/5.0 (Linux; Android\" and ip.geoip.country eq \"VN\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5) or (http.user_agent contains \"Mozilla/5.0 (iPhone; CPU iPhone OS\" and ip.geoip.country eq \"VN\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5) or (http.user_agent contains \"Mozilla/5.0 (Windows NT\" and ip.geoip.country eq \"VN\" and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.request.method in {\"GET\" \"POST\"}) or (cf.threat_score le 5)",
    "paused": false,
    "description": "Managed Challenge Việt Nam"
  }
  }'
