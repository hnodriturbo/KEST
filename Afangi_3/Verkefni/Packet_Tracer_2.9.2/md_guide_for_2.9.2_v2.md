# Packet Tracer - Basic Switch and End Device Configuration

## Overview
This documentation outlines the setup and configuration of a basic network involving two switches and two PCs in Cisco Packet Tracer. This network is designed to demonstrate essential networking tasks such as configuring IP addresses, setting up switch connectivity, and verifying network communication using ping tests.

## Network Topology

### Devices
- **Switches**:
  - **S1**: Configured with VLAN 1 IP Address 192.168.1.1
  - **S2**: Configured with VLAN 1 IP Address 192.168.1.2
- **End Devices**:
  - **PC-A**: NIC IP Address 192.168.1.10
  - **PC-B**: NIC IP Address 192.168.1.11

### Connections
- **S1 to S2**: Connected with a Copper Cross-Over cable at FastEthernet0/1.
- **S1 to PC-A**: Connected with a Copper Straight-Through cable at FastEthernet0/6.
- **S2 to PC-B**: Connected with a Copper Straight-Through cable at FastEthernet0/18.

## Configuration Steps

### Part 1: Set Up the Network Topology
1. **Power on all devices**.
2. **Drag and drop switches S1 and S2 and PCs to the workspace**.
3. **Connect S1 and S2 with a Copper Cross-Over cable at FastEthernet0/1**.
4. **Connect S1 to PC-A using a Copper Straight-Through cable at FastEthernet0/6**.
5. **Connect S2 to PC-B using a Copper Straight-Through cable at FastEthernet0/18**.
6. **Inspect network connections to ensure all link lights turn green after a moment**, indicating successful connections.

### Part 2: Configure PC Hosts
1. **Configure PC-A**:
   - Navigate to `Desktop > IP Configuration`.
   - Set IP Address as `192.168.1.10` and Subnet Mask as `255.255.255.0`.
   - Leave the default gateway blank as no router is attached.
2. **Verify PC-A's settings**:
   - Open `Command Prompt` and type `ipconfig /all`.
   - Check that the IP address and subnet mask are correctly assigned.
3. **Configure PC-B using similar steps**:
   - IP Address `192.168.1.11`, Subnet Mask `255.255.255.0`.
4. **Test connectivity**:
   - From PC-A, ping PC-B by typing `ping 192.168.1.11` in the command prompt.
   - Verify that the ping is successful, indicating network communication between PC-A and PC-B is functional.

### Part 3: Configure and Verify Basic Switch Settings
- **Note**: Specific switch configurations such as setting hostnames, passwords, and VLAN configurations are implied but not detailed in the provided steps. Use standard Cisco CLI commands to perform these tasks if required by your curriculum.

## Reflection
Consider why some ports may show different statuses and explore what configurations might affect connectivity beyond the basic IP settings. Also, reflect on the importance of accurate cable selection and port configuration in network setup.

## Additional Notes
This document is intended for use within the Packet Tracer environment to simulate and verify basic network configurations. Adjustments might be needed based on the specific Packet Tracer version and available device models.

