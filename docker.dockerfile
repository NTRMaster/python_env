FROM python:3.6.8-alpine

ENV LANG=en_US.UTF-8
ENV TZ=Asia/Shanghai

ADD requirements.txt /requirements.txt

RUN apk add --no-cache --virtual .build-deps \
        gcc \
        g++ \
        musl-dev && \
        pip install -r /requirements.txt \
        # apk del .build-deps &&
