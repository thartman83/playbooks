#!/bin/bash
# ip link add name {{ vmhost_bridge_iface }} type bridge
# ip link set dev {{ vmhost_bridge_iface }} up
# ip address add {{ vm_cluster_bridge_ip }}/24 dev {{ vmhost_bridge_iface }}
# ip route add {{ vm_cluster_bridge_net }} dev {{ vmhost_bridge_iface }}

#ip route append default via {{ vmhost_route_addr }} dev {{ vmhost_bridge_iface }}
#ip link set {{ vmhost_iface_name }} master {{ vmhost_bridge_iface }}
#ip address del {{ vmhost_ip_addr }} dev {{ vmhost_iface_name }}
