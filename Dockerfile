FROM python:latest

COPY scripts/* /opt/scripts/

CMD ["bash", "/opt/scripts/startup.sh"]
