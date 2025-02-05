FROM golang:1.17


WORKDIR /go/src/cyberely
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

ENTRYPOINT ["cyberely"]
