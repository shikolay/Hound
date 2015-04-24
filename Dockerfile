FROM golang

ADD . /go/src/github.com/etsy/hound
ADD config.json /hound/
RUN go-wrapper install github.com/etsy/hound/cmds/houndd

EXPOSE 6080

ENTRYPOINT ["/go/bin/houndd", "-conf", "/hound/config.json"]

