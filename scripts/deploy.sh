#!/bin/bash

CMD="
cd ~/isubata && \
git pull origin master && \
cd ~/isubata/webapp/nodejs && \
sudo systemctl restart nginx && \
sudo systemctl restart isubata.nodejs.service
"

ssh isu1 -t "$CMD"
