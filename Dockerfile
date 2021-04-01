FROM busybox:1.33.0

RUN mkdir -p /var/spool/cron/crontabs && \
mkdir -p /usr/bin && \
mkdir -p /var/log

# Configure cron
COPY crontab /etc/cron/crontab
COPY duckdns.sh startup.sh /usr/bin/

# Init cron
RUN crontab /etc/cron/crontab

# Start
CMD ["/usr/bin/startup.sh"]
CMD ["crond", "-f"]

