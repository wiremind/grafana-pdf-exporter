FROM buildkite/puppeteer

WORKDIR .

RUN apt-get update && DEBIAN_FRONTEND=noninteractive  apt-get install -y awscli

COPY grafana_pdf.js grafana_pdf_exporter.sh sendgridSendEmail.sh  ./

# just run the container doing nothing
ENTRYPOINT ["sh", "-c", "sleep infinity"]
