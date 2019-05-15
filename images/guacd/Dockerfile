FROM guacamole/guacd

ENV GUACD_LOG_LEVEL=info

RUN apt-get update && apt-get install -y supervisor rsyslog

# tini isn't available for debian stretch (but comes in buster)
ARG TINI_VERSION=v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /bin/tini
RUN chmod +x /bin/tini

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

COPY start.sh /start.sh

EXPOSE 4822

ENTRYPOINT ["/start.sh"]
