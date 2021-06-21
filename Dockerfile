FROM buildkite/puppeteer

WORKDIR .

COPY grafana_pdf.js ./

# just run the container doing nothing
ENTRYPOINT ["sh", "-c", "sleep infinity"]
