# Network Configuration Project Documentation

## Table of Contents
1. [Introduction](#introduction)
2. [Network Topology](#network-topology)
3. [Device Configuration](#device-configuration)
   - [Router Configuration](#router-configuration)
   - [Switch Configuration](#switch-configuration)
   - [Wireless LAN Controller Setup](#wireless-lan-controller-setup)
4. [Verification and Testing](#verification-and-testing)
5. [Security Measures](#security-measures)
6. [Conclusion](#conclusion)
7. [Screenshots](#screenshots)




## Introduction
This project involves setting up and configuring a network using Cisco Packet Tracer. The primary objectives are to understand network topologies, configure devices for connectivity, implement security measures, and ensure network communication through various tests. The expected outcomes include a fully operational network with routers, switches, and a wireless LAN controller, all configured for optimal performance and security.

## Network Topology
The network topology consists of two Cisco 2811 routers, a Cisco Catalyst 3650-24PS as the core switch, a Cisco Catalyst 2960 as the access switch, and a simulated Wireless LAN Controller (WLC) for managing wireless connections. This setup allows for the demonstration of various networking principles, including hierarchical network design with core and access layers that facilitate scalability and management.

### Detailed Network Diagram
Please insert a detailed diagram of the network setup here. Use a network diagramming tool to create a visual representation of the interconnections between devices.

## Device Configuration

### Router Configuration
The routers are configured to support routing information protocol OSPF, with additional settings for Network Address Translation (NAT) and Access Control Lists (ACLs) to enhance security and network address management.

#### Router1
- **IP Address**: 192.168.1.1/24
- **Protocols Used**: OSPF
- **Additional Settings**: NAT, ACLs

#### Router2
- **IP Address**: 192.168.1.2/24
- **Protocols Used**: OSPF
- **Additional Settings**: VPN configurations

### Switch Configuration
Switches are configured to manage data flow within the network, including VLAN setup for network segmentation, trunking for VLAN tagging across switch links, and Spanning Tree Protocol (STP) for preventing network loops.

#### CoreSwitch (Cisco 3650)
- **VLAN 10 Configuration**: For management
- **VLAN 20 Configuration**: For user data
- **Trunk Links**: Ensured proper encapsulation and VLAN tagging
- **STP Settings**: Configured as the root bridge to optimize path selection

#### AccessSwitch (Cisco 2960)
- **VLAN Configurations**: Implemented several VLANs for data separation
- **Port Security**: Enabled to restrict input to an interface by limiting and identifying MAC addresses of the workstations that are allowed to access the port

### Wireless LAN Controller Setup
The WLC was configured to manage multiple wireless access points efficiently, ensuring seamless connectivity and security for wireless clients.

- **SSID Configuration**: Configured multiple SSIDs to segregate wireless network traffic
- **Security Protocols**: Implemented WPA2 for robust wireless security
- **AP Management**: Centralized management of APs to optimize performance and troubleshooting

## Verification and Testing
Network functionality was tested extensively to ensure connectivity and proper configurations.

- **Ping Tests**: Conducted between all devices to confirm network connectivity
- **Traceroute Outputs**: Used to verify the paths taken by packets across the network
- **Bandwidth Testing**: Ensured that network links are operating at expected speeds

## Security Measures
Robust security configurations were implemented to protect network data.

- **Firewall Rules**: Configured to permit or deny traffic based on security policies
- **VPN Configurations**: Set up to provide secure remote connectivity
- **ACLs on Routers and Switches**: Used to filter traffic and enhance security

## Conclusion
This project successfully established a robust, secure, and efficient network environment.

## Screenshots
Here are screenshots depicting critical stages of the project configuration. Each image illustrates a specific part of the network setup or a crucial step in the configuration process.

![Verification and Testing](../Screenshots/packet_trace.2.9.2-ping.jpg)
![Verification and Testing](../Screenshots/Activity_Results_Completion_Of_Activity_Showing_User_Profile.jpg)
![Verification and Testing](../Screenshots/pc-b-show-running-config.jpg)
![Verification and Testing](../Screenshots/ping_from_pcA_to_switches.jpg)
![Verification and Testing](../Screenshots/show_terminal_information_pc_a.jpg)
