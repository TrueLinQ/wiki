mkdir -p server-contak 
#cd server-xms
curl -GET https://otp.otpalerts.com/contak/v2/api-docs -o server-contak/api-docs.json
node bin/spectacle  server-contak/api-docs.json -t server-contak/public -f index.html -D
#cd ..