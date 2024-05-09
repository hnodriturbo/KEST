## Packet Tracer Assignment: Basic Switch and End Device Configuration

### Objective
In this lab, you will build a simple network with two hosts and two switches, configure basic settings including hostname, local passwords, and login banner, and use various show commands to display configurations and statuses. This lab will help you understand how to setup a basic network and verify connectivity using ping commands.

### Network Design
The network includes two Cisco 2960 switches and two PCs connected as follows:
- Switch S1 connected to PC-A
- Switch S2 connected to PC-B
- Switch S1 connected to Switch S2

### Configuration Steps

#### PC Configurations
- **PC-A**: IP Address 192.168.1.10, Subnet Mask 255.255.255.0
- **PC-B**: IP Address 192.168.1.11, Subnet Mask 255.255.255.0
- Configure static IP addresses on each PC according to the addressing table.

#### Switch Configurations
- **Switch Names**: S1 and S2 named according to their labels.
- **Password Settings**: `class` for privileged EXEC mode, `cisco` for console access.
- **SVI Configuration**: Enable and configure the VLAN 1 interface for each switch with respective IP addresses.
- **MOTD Banner**: Set a login banner warning against unauthorized access.

### Verification
- **Ping Tests**: From PCs to switches and vice versa to verify connectivity.
- **Show Commands**: Use commands to display running configuration, IOS version, interface status, and save configurations.

### Troubleshooting
- Check if all cables are correctly connected and interfaces are appropriately configured.
- Ensure no IP conflicts or incorrect subnet masks which could prevent successful pings.

### Reflection Questions
- Why are some FastEthernet ports on the switches up while others are down?
- What could prevent a ping from being sent between the PCs?

