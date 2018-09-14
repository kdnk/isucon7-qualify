#!/bin/bash

set -eu
set -o pipefail

CMD="
cd ~/isubata && \
git pull origin master && \
cp ~/isubata/nginx.conf /etc/nginx/sites-enabled/nginx.conf && \
cd ~/isubata/webapp/nodejs && \
sudo systemctl restart nginx && \
sudo systemctl restart isubata.nodejs.service
"

ssh isu1 -t "$CMD"
