#!/bin/bash

# Install build-lambda-zip with:
# go get -u github.com/aws/aws-lambda-go/cmd/build-lambda-zip

GOARCH=amd64 GOOS=linux go build
${GOPATH}/bin/build-lambda-zip --output ./AWSLambdaGo.zip ./AWSLambdaGo