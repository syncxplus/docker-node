FROM node:boron-alpine

LABEL maintainer="jibo@outlook.com"

RUN apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata

ENV LANG C.UTF-8

WORKDIR /app/

VOLUME /app/

CMD ["node", "--version"]
