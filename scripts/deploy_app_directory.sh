#!/bin/sh

mkdir -p /usr/share/nginx/html/releases/${APPLICATION_NAME}
rsync -av /var/tmp/myapp/ /usr/share/nginx/html/releases/${APPLICATION_NAME}/${DEPLOYMENT_ID}

ln -snf /usr/share/nginx/html/releases/${APPLICATION_NAME}/${DEPLOYMENT_ID} /usr/share/nginx/html/myapp
