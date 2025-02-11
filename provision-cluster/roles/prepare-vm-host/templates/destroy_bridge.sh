#!/bin/bash
ip address del {{ vmhost_ip_addr }} dev {{ vmhost_bridge_iface }}
ip link set {{ vmhost_bridge_iface }} down
ip link del {{ vmhost_bridge_iface }}
ip address add {{ vmhost_ip_addr }} dev {{ vmhost_iface_name }}
