| **LAN/WAN Segment**                | **Hosts Needed** | **Required Subnet** | **CIDR Notation** | **Total Addresses** | **Usable IPs**     | **Subnet Mask**    | **First Usable IP Address**  | **Example Address Range**                       |
|------------------------------------|------------------|---------------------|-------------------|---------------------|--------------------|--------------------|---------------------------|--------------------------------------------------|
| ES-1 LAN (Router East to ES-1)     | 14               | /28                 | /28               | 16                  | 14                 | 255.255.255.240    | 192.168.203.129           | 192.168.203.128 - 192.168.203.143 (usable: .129-.142)  |
| ES-2 LAN (Router East to ES-2)     | 21               | /27                 | /27               | 32                  | 30                 | 255.255.255.224    | 192.168.203.1             | 192.168.203.0 - 192.168.203.31 (usable: .1-.30)  |
| WS-1 LAN (Router West to WS-1)     | 19               | /27                 | /27               | 32                  | 30                 | 255.255.255.224    | 192.168.203.97            | 192.168.203.96 - 192.168.203.127 (usable: .97-.126)  |
| WS-2 LAN (Router West to WS-2)     | 32               | /26                 | /26               | 64                  | 62                 | 255.255.255.192    | 192.168.203.33            | 192.168.203.32 - 192.168.203.95 (usable: .33-.94)  |
| WAN Link (Router East to West)     | 2                | /30                 | /30               | 4                   | 2                  | 255.255.255.252    | 192.168.203.145           | 192.168.203.144 - 192.168.203.147 (usable: .145-.146) |

### **Explanation**
- **LAN/WAN Segment:** The name of the network link, identifying if it is a LAN or WAN and what devices it connects.
- **Hosts Needed:** The number of hosts you need in a subnet.
- **Required Subnet:** The smallest possible subnet size that will accommodate the hosts.
- **CIDR Notation:** The CIDR representation of the subnet mask.
- **Total Addresses:** The total number of IP addresses available in that subnet.
- **Usable IPs:** The number of usable IPs, accounting for the network and broadcast addresses.
- **Subnet Mask:** The decimal subnet mask value.
- **First Usable IP Address:** The first usable IP address in the subnet for assigning to a device.
- **Example Address Range:** An example of the IP address range, showing the network address, broadcast address, and usable IP range.

