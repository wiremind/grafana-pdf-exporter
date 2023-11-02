FROM node:bookworm-slim

# We don't need the standalone Chromium
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
ENV DEBIAN_FRONTEND=noninteractive

# Install Google Chrome Stable and fonts
# Note: this installs the necessary libs to make the browser work with Puppeteer.
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked apt-get update \
  && apt-get install -y gnupg wget awscli curl \
  && wget --quiet --output-document=- https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor > /etc/apt/trusted.gpg.d/google-archive.gpg \
  && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
  && apt-get update && apt-get install google-chrome-stable -y --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*

USER node
WORKDIR /app

COPY --chown=node:node . .

# just run the container doing nothing
ENTRYPOINT ["sh", "-c", "sleep infinity"]
