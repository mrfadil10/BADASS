FROM alpine:latest

# Install necessary network tools (Busybox is included in Alpine, but iproute2 gives better 'ip' commands)
RUN apk update && apk add --no-cache busybox iproute2 net-tools

# Keep the container running
CMD ["tail", "-f", "/dev/null"]