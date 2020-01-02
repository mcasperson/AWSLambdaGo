package main

import (
	"context"
	"github.com/aws/aws-lambda-go/lambda"
)

type ProxyResponse struct {
	statusCode string
	body       string
	headers    map[string]string
}

type RawData struct {
	data interface{}
}

func HandleRequest(ctx context.Context, input RawData) (ProxyResponse, error) {
	return ProxyResponse{
		statusCode: "200",
		body:       "",
		headers:    map[string]string{"Access-Control-Allow-Origin": "*"},
	}, nil
}

func main() {
	lambda.Start(HandleRequest)
}
