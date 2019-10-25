# version:0.23.2
FROM golang:alpine AS build
MAINTAINER ZouRi.Ma "zourima@outlook.com"

ENV NPS_VERSION v0.23.2

RUN apk add --no-cache -U make git
RUN git clone https://github.com/cnlh/nps /go/src/nps \
    && cd /go/src/nps \
    && git checkout -b _branch_build ${NPS_VERSION} \
    && go get -d -v ./... \
    && make
RUN mkdir -p /nps/conf \
    && mv /go/src/nps/nps /nps/ \
    && mv /go/src/nps/web /nps/

FROM amd64/alpine:3.10.3
COPY --from=build /nps /nps
COPY --from=build /go/src/nps/conf /etc/nps_conf_tmp
ADD run.sh /
CMD ["sh", "/run.sh"]