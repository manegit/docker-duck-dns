FROM alpine:3.8
RUN apk update && apk add curl

# Configure cron
COPY crontab /etc/cron/crontab
COPY duckdns.sh /usr/bin/duckdns.sh

# Init cron
RUN crontab /etc/cron/crontab

CMD ["crond", "-f"]

