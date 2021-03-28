echo url="https://www.duckdns.org/update?domains=${DOMAINS}&token=${TOKEN}&ip=" | curl -k -o /var/log/duckdns.log -K -

