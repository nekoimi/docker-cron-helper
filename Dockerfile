FROM willfarrell/crontab

LABEL maintainer="yangjinbo <yangjinbo@yoyohr.com>"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories  \
    apk add --no-cache curl tzdata \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    echo "Asia/Shanghai" > /etc/timezone \

USER root