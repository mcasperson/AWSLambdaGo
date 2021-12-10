# Install build-lambda-zip with:
# go.exe install github.com/aws/aws-lambda-go/cmd/build-lambda-zip@latest

$env:GOARCH="amd64"
$env:GOOS="linux"
go build
& "$($env:GOPATH)\Bin\build-lambda-zip.exe" -o .\AWSLambdaGo.zip .\AWSLambdaGo
