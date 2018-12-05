FROM alpine

COPY heketi /usr/bin/heketi
COPY heketi-cli /usr/bin/heketi-cli
COPY heketi-start.sh /usr/bin/heketi-start.sh

VOLUME /etc/heketi
VOLUME /var/lib/heketi

ENTRYPOINT ["/usr/bin/heketi-start.sh"]
EXPOSE 8080
