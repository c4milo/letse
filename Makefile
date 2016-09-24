GHACCOUNT := c4milo
NAME := letse
VERSION := v1.0.0

include common.mk

deps:
	go get -u github.com/ericchiang/letsencrypt
	go get -u github.com/aws/aws-sdk-go/aws/...
	go get -u golang.org/x/net/publicsuffix
	go get -u github.com/docopt/docopt-go
