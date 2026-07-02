# Setup Underlay IP
/sbin/ip addr add 10.1.1.2/24 dev eth0
/sbin/ip link set eth0 up

# Setup Bridge
/sbin/ip link add br0 type bridge
/sbin/ip link set br0 up

/sbin/ip link set eth1 master br0

# Setup VXLAN 10 with Dynamic Multicast
/sbin/ip link add name vxlan10 type vxlan id 10 dev eth0 group 239.1.1.1 dstport 4789
/sbin/ip link set vxlan10 master br0
/sbin/ip link set vxlan10 up