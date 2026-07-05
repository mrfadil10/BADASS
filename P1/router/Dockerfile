# Base image: Official FRR pinned to a stable version
FROM quay.io/frrouting/frr:8.4.5

# Install the extra network tools required by the subject
RUN apk update && apk add --no-cache busybox iproute2 tshark

# Copy the existing custom daemons file to enable BGP, OSPF, and IS-IS
COPY daemons /etc/frr/daemons