FROM willfarrell/crontab

LABEL maintainer="yangjinbo <yangjinbo@yoyohr.com>"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories  ; \
    apk update ; \
    apk add --no-cache curl tzdata coreutils ; \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime ; \
    echo "Asia/Shanghai" > /etc/timezone ; \
    date +"%Y-%m-%d %H:%M:%S"

USER root