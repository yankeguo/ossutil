FROM alpine:3.19

RUN mkdir -p /opt/bin

ENV PATH "/opt/bin:${PATH}"

RUN apk add --no-cache ca-certificates curl

ARG OSSUTIL_VERSION "1.7.19"

RUN mkdir -p download && \
    cd download && \
    curl -sSL -o ossutil.zip "https://gosspublic.alicdn.com/ossutil/${OSSUTIL_VERSION}/ossutil-v${OSSUTIL_VERSION}-linux-amd64.zip" && \
    unzip ossutil.zip && \
    mv "ossutil-v${OSSUTIL_VERSION}-linux-amd64" /opt/bin/ossutil && \
    chmod +x /opt/bin/ossutil && \
    cd .. && \
    rm -rf download

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]
