#!/bin/bash

# Wrapper for grafana_pdf.js
# Will copy the pdf file to an AWS bucket

node grafana_pdf.js $1 $GRAFANA_USER:$GRAFANA_PASSWORD $2

if [ ! -f $2 ]; then
    echo "Grafana dashboard $1 not exported to $2, exiting"
    exit 1
fi

### is AWS_REGION mandatory?
if [[ ! -z $AWS_BUCKET_NAME && ! -z $AWS_ACCESS_KEY_ID && ! -z $AWS_SECRET_ACCESS_KEY ]]; then
  echo "Copying $2 to s3://$AWS_BUCKET_NAME/"
  aws s3 cp $2 s3://$AWS_BUCKET_NAME/
  exit 0
fi
