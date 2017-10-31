FROM docker:17.10.0-ce

MAINTAINER Eric <ericliao@4gamers.com.tw>

ENV AWS_CLI_VERSION 1.11.131

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less jq && \
    pip --no-cache-dir install awscli==${AWS_CLI_VERSION} && \
    rm -rf /var/cache/apk/*