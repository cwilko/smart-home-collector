FROM cwilko/telegraf

RUN apk add speedtest-cli

ENV PYTHONUNBUFFERED=1

COPY speedtesh.sh .