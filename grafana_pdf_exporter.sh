#!/bin/bash

# Wrapper for grafana_pdf.js
# Will copy the pdf file to an AWS bucket

node grafana_pdf.js $1 $GRAFANA_USER:$GRAFANA_PASSWORD $2
aws s3 cp $2 s3://$AWS_BUCKET_NAME/
