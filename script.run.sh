mkdir -p server-contak 
#cd server-xms
curl -GET https://api.truelinq.com/contak/v2/api-docs -o server-truelinq/api-docs.json
node bin/spectacle  server-truelinq/api-docs.json -t server-truelinq/public -f index.html -D
#cd ..