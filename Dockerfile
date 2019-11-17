FROM linuxserver/transmission


COPY autoremove.sh /defaults/

RUN \
  printf "%s\n%s\n" \
  "#run autoremove script when we create our container" \
  "@reboot /defaults/autoremove.sh" \
  >> /etc/crontabs/root
