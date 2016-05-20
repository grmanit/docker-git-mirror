FROM python:latest

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

COPY scripts/* /opt/scripts/

CMD ["bash", "/opt/scripts/startup.sh"]
