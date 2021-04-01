wget -qO- "$@" https://duckdns.org/update/${DOMAIN}/${TOKEN} > /var/log/duckdns.org 2>&1

