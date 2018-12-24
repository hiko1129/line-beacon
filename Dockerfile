FROM ubuntu:18.04

ENV APP_ROOT /usr/src/line-beacon

WORKDIR ${APP_ROOT}

RUN apt-get update && apt-get install -y bluetooth bluez libbluetooth-dev libudev-dev

COPY . .

CMD ["sh", "./script/server.sh"]