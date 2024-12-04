

# VLSM Command Guide - Table of Commands

In this document, you will find all the commands necessary to configure your network devices, organized in a table for easy reference. Each command is described so that you understand its purpose and when to use it.

---

### VLSM (Variable Length Subnet Mask)
VLSM is a technique used to make efficient use of IP addresses by applying different subnet masks to different parts of a network. It allows you to create subnets of varying sizes depending on the specific number of hosts required for each subnet.

- **Purpose**: It prevents wasting IP addresses by creating subnets that closely match the needs of different parts of a network. For example, you can use a /26 subnet for a large group of users, while another part of the network might only need a /29.
- **Example**: A network administrator could use VLSM to divide the `192.168.1.0/24` network into multiple subnets:
  - `192.168.1.0/26` - 62 usable IPs (for larger departments)
  - `192.168.1.64/28` - 14 usable IPs (for smaller groups)
  - `192.168.1.80/30` - 2 usable IPs (for point-to-point links)

VLSM gives network administrators the flexibility to optimize IP addressing, ensuring that no addresses are wasted by allocating only what is required.

---

### CIDR (Classless Inter-Domain Routing)
CIDR is a method of allocating IP addresses and routing that was developed to replace the older "classful" network addressing system. It uses **prefix notation** (e.g., `/24`) to indicate how many bits are used for the network portion of an IP address, rather than sticking to the fixed classes (A, B, C).

- **Purpose**: It allows better aggregation of IP addresses, reducing the size of routing tables and improving the efficiency of IP address usage.
- **Example**: Instead of using a classful address range like `192.168.1.0` (Class C), which automatically has a subnet mask of `255.255.255.0`, CIDR allows the use of variable-length subnet masks such as `/28` (16 addresses) or `/30` (4 addresses). This flexibility makes it easier to optimize IP address allocation for various-sized networks.

### Key Differences
- **VLSM** is more about subnetting within a given network range, where each subnet can have a different mask.
- **CIDR** is used more generally to allocate and route IP addresses in a way that reduces IP address waste and makes routing more scalable.

In practice, **CIDR** and **VLSM** are often used together to efficiently allocate and manage IP addresses in both local networks and on the internet.

---

| Command                              | Description                                                                                   |
|--------------------------------------|-----------------------------------------------------------------------------------------------|
| `enable`                             | Enter **Privileged EXEC Mode** to execute higher-level commands.                              |
| `configure terminal`                 | Enter **Global Configuration Mode** to modify device settings.                                |
| `interface gigabitEthernet 0/0`      | Select **Gigabit Ethernet Interface G0/0** for configuration.                                 |
| `ip address <IP_ADDRESS> <SUBNET_MASK>` | Assign an **IP address** and **subnet mask** to the selected interface. Example: `ip address 10.1.1.1 255.255.255.192` |
| `no shutdown`                        | Enable the interface (bring it **up**).                                                       |
| `description <DESCRIPTION>`          | Set a **description** for the selected interface. Example: `description Connection to ES-1 LAN` |
| `ip route <DEST_NETWORK> <SUBNET_MASK> <NEXT_HOP_IP>` | Configure a **static route** to a remote network. Example: `ip route 10.1.2.0 255.255.255.0 10.1.1.146` |
| `exit`                               | Exit to the **previous mode** (e.g., from interface configuration to global configuration).   |
| `interface vlan 1`                   | Select **VLAN 1** interface for management configuration on the switch.                       |
| `ip default-gateway <DEFAULT_GATEWAY_IP>` | Set the **default gateway** for the switch. Example: `ip default-gateway 10.1.1.65`     |
| `ping <IP_ADDRESS>`                  | Test **connectivity** to another device by sending ICMP echo requests. Example: `ping 10.1.1.66` |
| `show ip interface brief`            | Display a **summary** of all interfaces, including IP addresses and statuses.                 |
| `show ip route`                      | Display the **routing table** to verify routes and network reachability.                      |
| `show running-config`                | Display the **current configuration** of the device.                                          |
| `show interfaces <INTERFACE>`        | Display detailed information about a specific **interface**. Example: `show interfaces gigabitEthernet 0/0` |
| `copy running-config startup-config` | Save the **running configuration** to the startup configuration for persistence after reboot. |

---

### Additional Commands for IP Addressing in Packet Tracer

Here are some additional commands that could be relevant for IP addressing schemes in Packet Tracer:

| Command                              | Description                                                                                   |
|--------------------------------------|-----------------------------------------------------------------------------------------------|
| `hostname <NAME>`                    | Set a **hostname** for the device to make it identifiable in the network. Example: `hostname Router1`. |
| `ip dhcp pool <POOL_NAME>`           | Create a **DHCP pool** for dynamic IP assignment. Example: `ip dhcp pool LAN`.               |
| `network <NETWORK> <SUBNET_MASK>`    | Specify the **network address** for the DHCP pool. Example: `network 192.168.1.0 255.255.255.0`. |
| `default-router <IP_ADDRESS>`        | Define the **default gateway** for the DHCP pool.                                            |
| `ip helper-address <IP_ADDRESS>`     | Set a **DHCP relay agent** on the router for forwarding DHCP requests to a remote server.     |
| `ip nat inside` and `ip nat outside` | Mark an interface as **inside or outside NAT**.                                               |
| `ip nat pool <NAME> <START_IP> <END_IP> <NETMASK>` | Define a **NAT pool** for address translation. Example: `ip nat pool NATPOOL 192.168.1.1 192.168.1.254 255.255.255.0`. |
| `access-list <NUMBER> permit <IP>`   | Create an **access list** to permit traffic for NAT. Example: `access-list 1 permit 192.168.1.0 0.0.0.255`. |
| `ip nat inside source list <NUMBER> pool <NAME>` | Configure NAT with the source list and NAT pool. Example: `ip nat inside source list 1 pool NATPOOL`. |

---

### IPv6 Routing Schemes in Packet Tracer

Here is a set of commands dedicated to **IPv6 routing and addressing schemes** in Packet Tracer:

| Command                              | Description                                                                                   |
|--------------------------------------|-----------------------------------------------------------------------------------------------|
| `ipv6 unicast-routing`               | Enable **IPv6 routing** on the device.                                                        |
| `interface <INTERFACE>`              | Select the interface where IPv6 addressing will be configured. Example: `interface gigabitEthernet 0/0`. |
| `ipv6 address <IPv6_ADDRESS>/<PREFIX_LENGTH>` | Assign an **IPv6 address** to the selected interface. Example: `ipv6 address 2001:DB8::1/64`. |
| `ipv6 enable`                        | Enable IPv6 processing on an interface (auto-generates a link-local address).                 |
| `ipv6 dhcp pool <POOL_NAME>`         | Create a **DHCPv6 pool** for dynamic IPv6 address assignment.                                 |
| `dns-server <IPv6_ADDRESS>`          | Assign a **DNS server** for the DHCPv6 pool.                                                 |
| `domain-name <DOMAIN>`               | Set a **domain name** for the DHCPv6 pool. Example: `domain-name example.com`.                |
| `ipv6 nd other-config-flag`          | Configure the **Router Advertisement (RA)** to use DHCPv6 for additional settings.            |
| `ipv6 route <DEST_NETWORK>/<PREFIX_LENGTH> <NEXT_HOP>` | Configure an **IPv6 static route**. Example: `ipv6 route 2001:DB8:1::/64 2001:DB8::2`.       |
| `ping ipv6 <IPv6_ADDRESS>`           | Test **IPv6 connectivity** to another device. Example: `ping ipv6 2001:DB8::1`.               |
| `show ipv6 interface brief`          | Display a **summary** of all IPv6-enabled interfaces, including addresses and statuses.       |
| `show ipv6 route`                    | Display the **IPv6 routing table** to verify network reachability.                            |
| `show running-config`                | View the **current configuration**, including IPv6 settings.                                  |
| `show ipv6 neighbors`                | Display the **neighbor discovery cache** for IPv6.                                            |


### Key Notes
- **IPv6 Configuration Requirements**: For IPv6, enabling `ipv6 unicast-routing` is essential to make the router support IPv6 routing protocols and configurations.

- **DHCPv6 vs Stateless Autoconfiguration**: Depending on the use case, you may want to configure DHCPv6 for centralized management or rely on Stateless Address Autoconfiguration (SLAAC) for ease of use.

---
---

## Additional Useful Commands for Packet Tracer

| Command                              | Description                                                                                   |
|--------------------------------------|-----------------------------------------------------------------------------------------------|
| `hostname <NAME>`                    | Set or change the **hostname** of the device. Example: `hostname Router1`                     |
| `line console 0`                     | Access **console line** for configuration, e.g., setting password.                            |
| `password <PASSWORD>`                | Set a **password** for console access. Example: `password cisco`                              |
| `login`                              | Enable **password checking** for console login.                                               |
| `line vty 0 4`                       | Access **VTY lines** for remote access configuration.                                         |
| `service password-encryption`        | Enable **encryption** for all passwords in the configuration file.                            |
| `enable secret <PASSWORD>`           | Set an **encrypted password** for privileged EXEC mode. Example: `enable secret class`        |
| `banner motd # <MESSAGE> #`          | Set a **Message of the Day (MOTD)** banner. Example: `banner motd # Unauthorized Access Prohibited #` |
| `interface fastEthernet 0/0`         | Select **Fast Ethernet Interface** for configuration.                                         |
| `clock set <TIME> <DAY> <MONTH> <YEAR>` | Set the **system clock**. Example: `clock set 12:00:00 1 Jan 2023`                           |
| `show version`                       | Display **system hardware and software** version information.                                |
| `show startup-config`                | Display the **saved configuration** (in NVRAM).                                              |
| `reload`                             | **Reboot** the device.                                                                        |
| `logging synchronous`                | Prevent console messages from **interrupting command input**.                                |
| `interface serial 0/0/0`             | Select **Serial Interface** for configuration.                                               |
| `clock rate <RATE>`                  | Set the **clock rate** on a serial interface (required for DCE end). Example: `clock rate 64000` |
| `duplex full`                        | Set the **duplex mode** of an interface to full.                                             |
| `speed 100`                          | Set the **speed** of an interface to 100 Mbps.                                               |
| `no ip domain-lookup`                | Disable **DNS lookup** to prevent delays when mistyping commands.                             |
| `copy startup-config running-config` | Copy the **startup configuration** to the running configuration.                              |
| `erase startup-config`               | Erase the **startup configuration** (reset device to factory default).                        |
| `debug ip routing`                   | Enable **debugging** for IP routing updates.                                                 |
| `undebug all`                        | Disable all **debugging** currently active on the device.                                    |
| `show protocols`                     | Display the status of **configured Layer 3 protocols**.                                       |
| `show arp`                           | Display the **ARP table** of the device.                                                     |
| `clear arp-cache`                    | **Clear the ARP cache** on the device.                                                       |
| `ip dhcp pool <NAME>`                | Create a **DHCP pool** for dynamic IP address allocation. Example: `ip dhcp pool LAN`        |
| `network <NETWORK> <SUBNET_MASK>`    | Define the **network** for the DHCP pool. Example: `network 10.1.1.0 255.255.255.0`          |
| `default-router <IP_ADDRESS>`        | Set the **default gateway** for the DHCP pool.                                               |
| `show mac address-table`             | Display the **MAC address table** of a switch.                                               |
| `spanning-tree mode pvst`            | Enable **Per VLAN Spanning Tree (PVST)** mode.                                               |
| `vlan <VLAN_ID>`                     | Create a **VLAN** and enter VLAN configuration mode. Example: `vlan 10`                      |
| `name <VLAN_NAME>`                   | Set a **name** for the VLAN. Example: `name Sales`                                           |
| `switchport mode access`             | Set an interface as an **access port** for a specific VLAN.                                  |
| `switchport access vlan <VLAN_ID>`   | Assign an interface to a **specific VLAN**. Example: `switchport access vlan 10`             |

---





### **Explanation**
- **Hosts Needed**: The number of hosts you need in a subnet.
- **Required Subnet**: The smallest possible subnet size that will accommodate the hosts.
- **CIDR Notation**: The CIDR representation of the subnet mask.
- **Total Addresses**: The total number of IP addresses available in that subnet.
- **Usable IPs**: The number of usable IPs, accounting for the network and broadcast addresses.
- **Subnet Mask**: The decimal subnet mask value.
- **Example Address Range**: An example of the IP address range, showing the network address, broadcast address, and usable IP range.

## Summary
- This document now contains three tables: two with essential commands for configuring routers, switches, and verifying network connectivity, and one with subnetting guidance to help with your VLSM calculations.
- Use these tables as a reference while working on your network setup. The commands and subnetting guidance will ensure you have everything you need at your fingertips.


---
---
---


### Understanding the Three Special IP Addresses: Network, Broadcast, and Usable Addresses

In any subnet, there are three key types of IP addresses to understand:
- **Network Address**: Used to identify the subnet itself.
- **Broadcast Address**: Used to send messages to all devices in the subnet.
- **Usable Addresses**: Addresses that can be assigned to devices within the network.

#### 1. Network Address
The **network address** is the first IP address in any subnet and represents the identity of that particular network. It cannot be assigned to any individual device. Instead, it is used by routers and switches to direct data appropriately.

- **Example**: For the subnet `192.168.1.0/24`, the network address is `192.168.1.0`.
- **Purpose**: It is used to define the network and is critical for routing and subnetting operations.

#### 2. Broadcast Address
The **broadcast address** is the last address in the subnet range, and it is used for communicating with all devices on the subnet simultaneously. Any packet sent to the broadcast address is received by all devices in that subnet.

- **Example**: In the subnet `192.168.1.0/24`, the broadcast address is `192.168.1.255`.
- **Purpose**: It is used for broadcasting messages such as ARP requests or DHCP announcements, enabling a message to be sent to all devices without knowing individual IPs.

##### How to Calculate the Broadcast Address
1. **Convert the Subnet Mask to Binary**: For example, the mask `255.255.255.192` converts to `11111111.11111111.11111111.11000000`.
2. **Invert the Bits**: Flip `1` to `0` and `0` to `1` to get the host bits mask: `00000000.00000000.00000000.00111111`.
3. **Bitwise OR Operation**: Apply the inverted bits to the network address to derive the broadcast address.
   - Example with `192.168.1.64/26`: The broadcast address is `192.168.1.127`.

#### 3. Usable Addresses
The **usable addresses** are all the addresses between the network address and the broadcast address. These can be assigned to devices like computers, routers, and other network devices.

- **Example**: In the network `192.168.1.0/24`, the usable addresses range from `192.168.1.1` to `192.168.1.254`. These addresses can be used by end devices.

### Learning All About These 3 Addresses
To effectively learn about network, broadcast, and usable addresses, follow these steps:

1. **Practice with Subnetting**:
   - Use a calculator or perform manual subnet calculations to understand how network, broadcast, and host addresses are derived for different subnets.
   - Example: Take the network `192.168.10.0/25` and try to calculate the network address (`192.168.10.0`), broadcast address (`192.168.10.127`), and usable range (`192.168.10.1` to `192.168.10.126`).

2. **Use Networking Tools**:
   - Tools like **Packet Tracer** or **GNS3** can simulate network environments where you can practice configuring devices with different subnets and observe how broadcast addresses are used.

3. **Understand Bitwise Operations**:
   - Understanding how subnet masks work and performing bitwise operations helps you derive the network and broadcast addresses. This builds your foundational knowledge of how IP addresses are represented and processed.

4. **Experiment with Real Devices**:
   - Configure different subnets on routers or switches (in simulators or real devices) to see how broadcast and network addresses behave in practical scenarios. Commands like `show ip route` or `show ip interface brief` can help you visualize the network layout.

### Example Scenario
Imagine a company has a network `192.168.5.0/24` and wants to create smaller subnets for different teams:
- **Team A**: Needs 50 IP addresses, so you can use `192.168.5.0/26`. The network address is `192.168.5.0`, and the broadcast address is `192.168.5.63`. Usable IPs are `192.168.5.1` to `192.168.5.62`.
- **Team B**: Needs 10 IP addresses, so you can use `192.168.5.64/28`. The network address is `192.168.5.64`, the broadcast address is `192.168.5.79`, and usable IPs are `192.168.5.65` to `192.168.5.78`.

This scenario helps you understand how different types of addresses are calculated and assigned practically.

### Updated Subnetting Table for IP Addressing Schemes

| **CIDR** | **Subnet Mask**     | **Total Addresses** | **Usable IPs**     | **Example Address Range**                       | **Extra Info**                                   |
|----------|---------------------|---------------------|--------------------|--------------------------------------------------|------------------------------------------------|
| /18      | 255.255.192.0       | 16,384              | 16,382             | 192.168.0.0 - 192.168.63.255 (usable: .1-.63.254) | Suitable for very large networks or multiple departments. |
| /19      | 255.255.224.0       | 8,192               | 8,190              | 192.168.0.0 - 192.168.31.255 (usable: .1-.31.254) | Common for larger organizational use.          |
| /20      | 255.255.240.0       | 4,096               | 4,094              | 192.168.0.0 - 192.168.15.255 (usable: .1-.15.254) | Suitable for midsized networks.                |
| /21      | 255.255.248.0       | 2,048               | 2,046              | 192.168.0.0 - 192.168.7.255 (usable: .1-.7.254)  | Great for moderate-sized subnets.              |
| /22      | 255.255.252.0       | 1,024               | 1,022              | 192.168.0.0 - 192.168.3.255 (usable: .1-.3.254)  | Useful for branch offices or larger subnets.   |
| /23      | 255.255.254.0       | 512                 | 510                | 192.168.0.0 - 192.168.1.255 (usable: .1-.1.254)  | Ideal for smaller segments of larger networks. |
| /24      | 255.255.255.0       | 256                 | 254                | 192.168.1.0 - 192.168.1.255 (usable: .1-.254)   | Common for medium-sized networks. Default Class C subnet. |
| /25      | 255.255.255.128     | 128                 | 126                | 192.168.1.0 - 192.168.1.127 (usable: .1-.126)   | Useful for dividing a /24 network into 2 equal parts.     |
| /26      | 255.255.255.192     | 64                  | 62                 | 192.168.1.0 - 192.168.1.63 (usable: .1-.62)     | Common for smaller subnets, such as branch offices.       |
| /27      | 255.255.255.224     | 32                  | 30                 | 192.168.1.0 - 192.168.1.31 (usable: .1-.30)     | Great for small subnets like point-to-point links.        |
| /28      | 255.255.255.240     | 16                  | 14                 | 192.168.1.0 - 192.168.1.15 (usable: .1-.14)     | Often used for network devices or small groups.           |
| /29      | 255.255.255.248     | 8                   | 6                  | 192.168.1.0 - 192.168.1.7 (usable: .1-.6)       | Ideal for connecting a few routers or devices.            |
| /30      | 255.255.255.252     | 4                   | 2                  | 192.168.1.0 - 192.168.1.3 (usable: .1-.2)       | Designed for point-to-point WAN links.                    |
| /31      | 255.255.255.254     | 2                   | 0                  | Point-to-Point link only                        | Saves IP space for point-to-point links, no broadcast.    |
| /32      | 255.255.255.255     | 1                   | 0                  | Host only, no subnet                            | Used for assigning a single IP to a specific device.      |

Understanding these key addresses helps in efficient network design, reducing IP address wastage, and ensuring that communication within subnets is handled properly.



## Subnetting Table for Ip addressing schemes

| **CIDR** | **Subnet Mask**     | **Total Addresses** | **Usable IPs**     | **Example Address Range**                       | **Extra Info**                                   |
|----------|---------------------|---------------------|--------------------|--------------------------------------------------|------------------------------------------------|
| /24      | 255.255.255.0       | 256                 | 254                | 192.168.1.0 - 192.168.1.255 (usable: .1-.254)   | Common for medium-sized networks. Default Class C subnet. |
| /25      | 255.255.255.128     | 128                 | 126                | 192.168.1.0 - 192.168.1.127 (usable: .1-.126)   | Useful for dividing a /24 network into 2 equal parts.     |
| /26      | 255.255.255.192     | 64                  | 62                 | 192.168.1.0 - 192.168.1.63 (usable: .1-.62)     | Common for smaller subnets, such as branch offices.       |
| /27      | 255.255.255.224     | 32                  | 30                 | 192.168.1.0 - 192.168.1.31 (usable: .1-.30)     | Great for small subnets like point-to-point links.        |
| /28      | 255.255.255.240     | 16                  | 14                 | 192.168.1.0 - 192.168.1.15 (usable: .1-.14)     | Often used for network devices or small groups.           |
| /29      | 255.255.255.248     | 8                   | 6                  | 192.168.1.0 - 192.168.1.7 (usable: .1-.6)       | Ideal for connecting a few routers or devices.            |
| /30      | 255.255.255.252     | 4                   | 2                  | 192.168.1.0 - 192.168.1.3 (usable: .1-.2)       | Designed for point-to-point WAN links.                    |
| /31      | 255.255.255.254     | 2                   | 0                  | Point-to-Point link only                        | Saves IP space for point-to-point links, no broadcast.    |
| /32      | 255.255.255.255     | 1                   | 0                  | Host only, no subnet                            | Used for assigning a single IP to a specific device.      |


### Understanding the Three Special IP Addresses: Network, Broadcast, and Usable Addresses

In any subnet, there are three key types of IP addresses to understand:
- **Network Address**: Used to identify the subnet itself.
- **Broadcast Address**: Used to send messages to all devices in the subnet.
- **Usable Addresses**: Addresses that can be assigned to devices within the network.

#### 1. Network Address
The **network address** is the first IP address in any subnet and represents the identity of that particular network. It cannot be assigned to any individual device. Instead, it is used by routers and switches to direct data appropriately.

- **Example**: For the subnet `192.168.1.0/24`, the network address is `192.168.1.0`.
- **Purpose**: It is used to define the network and is critical for routing and subnetting operations.

#### 2. Broadcast Address
The **broadcast address** is the last address in the subnet range, and it is used for communicating with all devices on the subnet simultaneously. Any packet sent to the broadcast address is received by all devices in that subnet.

- **Example**: In the subnet `192.168.1.0/24`, the broadcast address is `192.168.1.255`.
- **Purpose**: It is used for broadcasting messages such as ARP requests or DHCP announcements, enabling a message to be sent to all devices without knowing individual IPs.

##### How to Calculate the Broadcast Address
1. **Convert the Subnet Mask to Binary**: For example, the mask `255.255.255.192` converts to `11111111.11111111.11111111.11000000`.
2. **Invert the Bits**: Flip `1` to `0` and `0` to `1` to get the host bits mask: `00000000.00000000.00000000.00111111`.
3. **Bitwise OR Operation**: Apply the inverted bits to the network address to derive the broadcast address.
   - Example with `192.168.1.64/26`: The broadcast address is `192.168.1.127`.

#### 3. Usable Addresses
The **usable addresses** are all the addresses between the network address and the broadcast address. These can be assigned to devices like computers, routers, and other network devices.

- **Example**: In the network `192.168.1.0/24`, the usable addresses range from `192.168.1.1` to `192.168.1.254`. These addresses can be used by end devices.

### Learning All About These 3 Addresses
To effectively learn about network, broadcast, and usable addresses, follow these steps:

1. **Practice with Subnetting**:
   - Use a calculator or perform manual subnet calculations to understand how network, broadcast, and host addresses are derived for different subnets.
   - Example: Take the network `192.168.10.0/25` and try to calculate the network address (`192.168.10.0`), broadcast address (`192.168.10.127`), and usable range (`192.168.10.1` to `192.168.10.126`).

2. **Use Networking Tools**:
   - Tools like **Packet Tracer** or **GNS3** can simulate network environments where you can practice configuring devices with different subnets and observe how broadcast addresses are used.

3. **Understand Bitwise Operations**:
   - Understanding how subnet masks work and performing bitwise operations helps you derive the network and broadcast addresses. This builds your foundational knowledge of how IP addresses are represented and processed.

4. **Experiment with Real Devices**:
   - Configure different subnets on routers or switches (in simulators or real devices) to see how broadcast and network addresses behave in practical scenarios. Commands like `show ip route` or `show ip interface brief` can help you visualize the network layout.

### Example Scenario
Imagine a company has a network `192.168.5.0/24` and wants to create smaller subnets for different teams:
- **Team A**: Needs 50 IP addresses, so you can use `192.168.5.0/26`. The network address is `192.168.5.0`, and the broadcast address is `192.168.5.63`. Usable IPs are `192.168.5.1` to `192.168.5.62`.
- **Team B**: Needs 10 IP addresses, so you can use `192.168.5.64/28`. The network address is `192.168.5.64`, the broadcast address is `192.168.5.79`, and usable IPs are `192.168.5.65` to `192.168.5.78`.

This scenario helps you understand how different types of addresses are calculated and assigned practically.

### Updated Subnetting Table for IP Addressing Schemes

| **CIDR** | **Subnet Mask**     | **Total Addresses** | **Usable IPs**     | **Example Address Range**                       | **Extra Info**                                   |
|----------|---------------------|---------------------|--------------------|--------------------------------------------------|------------------------------------------------|
| /18      | 255.255.192.0       | 16,384              | 16,382             | 192.168.0.0 - 192.168.63.255 (usable: .1-.63.254, reserved are .0 and .63.255) | Suitable for very large networks or multiple departments. |
| /19      | 255.255.224.0       | 8,192               | 8,190              | 192.168.0.0 - 192.168.31.255 (usable: .1-.31.254, reserved are .0 and .31.255) | Common for larger organizational use.          |
| /20      | 255.255.240.0       | 4,096               | 4,094              | 192.168.0.0 - 192.168.15.255 (usable: .1-.15.254, reserved are .0 and .15.255) | Suitable for midsized networks.                |
| /21      | 255.255.248.0       | 2,048               | 2,046              | 192.168.0.0 - 192.168.7.255 (usable: .1-.7.254, reserved are .0 and .7.255)    | Great for moderate-sized subnets.              |
| /22      | 255.255.252.0       | 1,024               | 1,022              | 192.168.0.0 - 192.168.3.255 (usable: .1-.3.254, reserved are .0 and .3.255)    | Useful for branch offices or larger subnets.   |
| /23      | 255.255.254.0       | 512                 | 510                | 192.168.0.0 - 192.168.1.255 (usable: .1-.1.254, reserved are .0 and .1.255)    | Ideal for smaller segments of larger networks. |
| /24      | 255.255.255.0       | 256                 | 254                | 192.168.1.0 - 192.168.1.255 (usable: .1-.254)                                  | Common for medium-sized networks. Default Class C subnet. |
| /25      | 255.255.255.128     | 128                 | 126                | 192.168.1.0 - 192.168.1.127 (usable: .1-.126)                                  | Useful for dividing a /24 network into 2 equal parts.     |
| /26      | 255.255.255.192     | 64                  | 62                 | 192.168.1.0 - 192.168.1.63 (usable: .1-.62, reserved are .0 and .63)           | Common for smaller subnets, such as branch offices.       |
| /27      | 255.255.255.224     | 32                  | 30                 | 192.168.1.0 - 192.168.1.31 (usable: .1-.30, reserved are .0 and .31)           | Great for small subnets like point-to-point links.        |
| /28      | 255.255.255.240     | 16                  | 14                 | 192.168.1.0 - 192.168.1.15 (usable: .1-.14, reserved are .0 and .15)           | Often used for network devices or small groups.           |
| /29      | 255.255.255.248     | 8                   | 6                  | 192.168.1.0 - 192.168.1.7 (usable: .1-.6, reserved are .0 and .7)              | Ideal for connecting a few routers or devices.            |
| /30      | 255.255.255.252     | 4                   | 2                  | 192.168.1.0 - 192.168.1.3 (usable: .1-.2, reserved are .0 and .3)              | Designed for point-to-point WAN links.                    |
| /31      | 255.255.255.254     | 2                   | 0                  | Point-to-Point link only                                                       | Saves IP space for point-to-point links, no broadcast.    |
| /32      | 255.255.255.255     | 1                   | 0                  | Host only, no subnet                                                           | Used for assigning a single IP to a specific device.      |

Understanding these key addresses helps in efficient network design, reducing IP address wastage, and ensuring that communication within subnets is handled properly.

