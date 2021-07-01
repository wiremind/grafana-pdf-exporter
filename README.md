# grafana-pdf-exporter
Export a Grafana dashboard as PDF

Emails (exported dashboards) can be sent using SendGrid, in order to do this, one has to set FROM_NAME, FROM_EMAIL and SENDGRID_API_KEY environment variables.
sh sendgridSendEmail.sh -t 'to1@gmail.com;to2@gmail.com'  -s 'FINAL SCRIPT' -o '<p>Email body goes here</p>' -a '/tmp/test.sh;/tmp/test2.sh'

Thanks to @salv for the original nodejs implementation


