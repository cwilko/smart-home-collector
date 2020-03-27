FROM cwilko/telegraf:1.13.2-alpine-arm32v7

RUN apk add python speedtest-cli 

ENV PYTHONUNBUFFERED=1

COPY speedtest.sh .