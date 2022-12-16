certbot \
    --manual \
    --work-dir certbot \
    --config-dir certbot/config \
    --logs-dir certbot/logs \
    certonly \
    --preferred-challenges=dns \
    -d "sample.isuvorov.com"