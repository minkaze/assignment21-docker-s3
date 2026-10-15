FROM node:22-alpine

RUN apk add --no-cache git

ARG SOURCE_REPO=https://github.com/minkaze/assignment21-docker-s3.git

RUN git clone --depth 1 "$SOURCE_REPO" /app \
    && rm -rf /app/.git

WORKDIR /app

ENV PORT=10000

EXPOSE 10000

CMD ["node", "server.js"]
