#!/bin/sh

# arguments
VERSION=${VERSION:-"0.11.2"}
PLUGINS=${PLUGINS:-""}
ENABLE_TELEMETRY=${ENABLE_TELEMETRY:-"true"}

# environments
GOPATH=${GOPATH:-"/go"}
GOOS=${GOOS:-"linux"}
GOARCH=${GOARCH:-"amd64"}

# get caddy source
git clone --depth 1 -b "v${VERSION}" https://github.com/mholt/caddy $GOPATH/src/github.com/mholt/caddy

# plugin helper
go get -v github.com/abiosoft/caddyplug/caddyplug

# telemetry
if [[ "$ENABLE_TELEMETRY" == "false" ]]
then
    cat > $GOPATH/src/github.com/mholt/caddy/caddy/caddymain/run.go.disablestats.go <<EOF
    package caddymain
    import "os"
    func init() {
        switch os.Getenv("ENABLE_TELEMETRY") {
        case "0", "false":
            EnableTelemetry = false
        case "1", "true":
            EnableTelemetry = true
        }
    }
EOF
fi

# plugins
for plugin in $(echo $PLUGINS | tr "," " ")
do
    go get -v $(caddyplug package $plugin)
    printf "package caddyhttp\nimport _ \"$(caddyplug package $plugin)\"" > $GOPATH/src/github.com/mholt/caddy/caddyhttp/$plugin.go
done

# builder dependency
git clone --depth 1 https://github.com/caddyserver/builds $GOPATH/src/github.com/caddyserver/builds

# build
cd $GOPATH/src/github.com/mholt/caddy/caddy \
    && go run build.go -goos=$GOOS -goarch=$GOARCH \
    && mv caddy ${1:-"/usr/bin/caddy"}
