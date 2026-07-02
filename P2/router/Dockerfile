# Base image: Official FRR pinned to a stable version
FROM quay.io/frrouting/frr:8.4.5

# Install the extra network tools required by the subject
RUN apk update && apk add --no-cache busybox iproute2 tshark

# Copy your existing custom daemons file to enable BGP, OSPF, and IS-IS
COPY daemons /etc/frr/daemons

COPY router_mfadil-1.sh /router_mfadil-1.sh
COPY router_mfadil-2.sh /router_mfadil-2.sh