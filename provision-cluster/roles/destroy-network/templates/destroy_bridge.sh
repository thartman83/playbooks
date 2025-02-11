#!/bin/bash
ip link set {{ vmhost_bridge_iface }} down
ip link del {{ vmhost_bridge_iface }}
