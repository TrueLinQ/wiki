mkdir -p server-contak 
#cd server-xms
mkdir -p temp/ssl
echo "HEAD / HTTP/1.0\n Host: app.otpalerts.com\n\n EOT\n" | openssl s_client -prexit -connect app.otpalerts.com:443 > temp/ssl/cert.pem
#curl --cacert ssl/cert.pem https://api.mehery.io/xms/v2/api-docs?group=latest
curl --cacert temp/ssl/cert.pem https://app.otpalerts.com/contak/v2/api-docs?group=clientnode -o server-contak/api-docs-raw.json
cat server-contak/api-docs-raw.json | jq > server-contak/api-docs.json
rm server-contak/api-docs-raw.json

node bin/spectacle  server-contak/api-docs.json -t server-contak/public -f index.html 

widdershins --summary server-contak/api-docs.json -o reslate/source/index.md \
--language_tabs 'shell:Shell' 'http:HTTP' 'javascript:JS'  'python:Python' 'ruby:Ruby'  'php:PHP' 'java:Java'  'go:Go' 'csharp:C#'

cd reslate
npm i
npm run build
cd ..
echo  "deleting... server-contak/public2"
rm -r server-contak/public2
echo  "moving... to server-contak/public2"
mv reslate/_site server-contak/public2
echo  "removing... reslate/source/index.md"
rm reslate/source/index.md

#cd ..