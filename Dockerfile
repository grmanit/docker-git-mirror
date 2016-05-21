FROM python:2

ENV MIRRORS=/var/mirrors/data MIRROR_CONFIG=/var/mirrors/config/config.txt SLEEP=5m

VOLUME /var/mirrors/config
COPY scripts/* /opt/scripts/

CMD ["bash", "/opt/scripts/startup.sh"]
