FROM cwilko/telegraf:latest

RUN apk add coreutils python speedtest-cli 

ENV PYTHONUNBUFFERED=1

COPY speedtest.sh .