wget -qO- "$@" https://duckdns.org/update/${DOMAIN}/${TOKEN} > /var/log/duckdns.log 2>&1

