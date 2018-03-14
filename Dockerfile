FROM python:3-onbuild
LABEL maintainer "chen.weiguang@gmail.com"

WORKDIR /app
COPY ./run.sh /app/run.sh

ENTRYPOINT ["./run.sh"]