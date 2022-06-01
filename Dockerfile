FROM golang:1.18.2

LABEL \
    author="yeahhhh" \
    email="fightingye@126.com"

WORKDIR /srvpub

COPY . /srvpub

RUN go env -w GO111MODULE=on && \
    go env -w GOPROXY=https://goproxy.cn,direct

CMD ["go", "run", "main.go"]
#CMD ["/bin/bash"]
