# Setup Underlay IP
ip addr add 10.1.1.2/24 dev eth0
ip link set dev eth0 up

# Bring up Host-facing interface
ip link set dev eth1 up

# Setup Bridge
ip link add br0 type bridge
ip link set dev br0 up
ip link set dev eth1 master br0

# Setup VXLAN 10 with Dynamic Multicast
ip link add name vxlan10 type vxlan id 10 dev eth0 group 239.1.1.1 dstport 4789
ip link set dev vxlan10 master br0
ip link set dev vxlan10 up