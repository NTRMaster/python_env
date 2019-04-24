FROM python:3.6.8-stretch

ENV LANG=C.UTF-8
ENV TZ=Asia/Shanghai

ADD requirements.txt /requirements.txt

RUN apt-get update && apt-get install -y --no-install-recommends \
        swig && \
    rm -rf /var/lib/apt/lists/* && \
    # pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
    pip install --no-cache-dir \
        numpy==1.14.3 \
        Cython==0.27.3 && \
    pip install --no-cache-dir -r /requirements.txt \
    # apk del .build-deps &&