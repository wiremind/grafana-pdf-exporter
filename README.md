# grafana-pdf-exporter

Export a Grafana dashboard as PDF

## How to run

Exported dashboards can be sent using SendGrid, in order to do this, one has to set these environment variables:
- FROM_NAME
- FROM_EMAIL
- SENDGRID_API_KEY

```sh
sh sendgridSendEmail.sh -t 'to1@gmail.com;to2@gmail.com'  -s 'FINAL SCRIPT' -o '\<p\>Email body goes here\<\/p\>' -a '/tmp/test.sh;/tmp/test2.sh'
```

## Supported Grafana versions

| Release   | Grafana versions |
| :-------- | :--------------: |
| v1.7.0    | >= 8             |

## Contribution

Thanks to @salv for the original nodejs implementation
