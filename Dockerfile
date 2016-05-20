FROM python:latest

ENV MIRRORS=/var/mirrors SLEEP=5m

VOLUME $MIRRORS
COPY scripts/* /opt/scripts/

CMD ["bash", "/opt/scripts/startup.sh"]
