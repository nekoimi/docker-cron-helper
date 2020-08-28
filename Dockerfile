FROM willfarrell/crontab

LABEL maintainer="yangjinbo <yangjinbo@yoyohr.com>"

RUN apk add --no-cache curl

USER root