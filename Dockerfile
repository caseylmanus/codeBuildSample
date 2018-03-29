FROM golang:alpine
COPY main.go /go/src/github.com/caseylmanus/codeBuildSample/main.go
RUN  cd /go/src/github.com/caseylmanus/codeBuildSample && go build -o server
RUN cp /go/src/github.com/caseylmanus/codeBuildSample/server .
EXPOSE 80
ENTRYPOINT ./server
