FROM python:3.6.8-alpine

ENV LANG=en_US.UTF-8
ENV TZ=Asia/Shanghai

ADD requirements.txt /requirements.txt

RUN apk add --no-cache --virtual .build-deps \
        gcc \
        linux-headers \
        g++ \
        musl-dev \
        jpeg-dev \
        zlib-dev \
        pkgconf \
        cairo-dev && \
        pip install --no-cache-dir numpy==1.14.3 Cython==0.27.3 && \
        pip install --no-cache-dir -r /requirements.txt \
        # apk del .build-deps &&
