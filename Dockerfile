FROM node:current-alpine
# USER node
WORKDIR /home/node
ADD ./scripts .
RUN npm install --production && set -x && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* var/cache/apk* && set -x

CMD ["node", "server.js"]
