FROM node:6.9-alpine

MAINTAINER Nebo#15 support@nebo15.com

ENV REFRESHED_AT=2016-09-28 \
    NODE_VERSION=6.9.5 \
    TERM=xterm \
    HOME=/app

# Create app dir
RUN mkdir ${HOME} && \
    chown -R node:node ${HOME}

# Run app with PM2
RUN npm install -g pm2
ENTRYPOINT ["pm2 start --no-daemon"]
WORKDIR ${HOME}

CMD ["static/server.server.js"]
