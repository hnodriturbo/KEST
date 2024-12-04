| **Hosts Needed** | **Required Subnet** | **CIDR Notation** | **Total Addresses** | **Usable IPs**     | **Subnet Mask**    | **Example Address Range**                       |
|------------------|---------------------|-------------------|---------------------|--------------------|--------------------|--------------------------------------------------|
| 21               | /27                 | /27               | 32                  | 30                 | 255.255.255.224    | 192.168.203.0 - 192.168.203.31 (usable: .1-.30)  |
| 32               | /26                 | /26               | 64                  | 62                 | 255.255.255.192    | 192.168.203.0 - 192.168.203.63 (usable: .1-.62)  |
| 14               | /28                 | /28               | 16                  | 14                 | 255.255.255.240    | 192.168.203.0 - 192.168.203.15 (usable: .1-.14)  |
| 6                | /29                 | /29               | 8                   | 6                  | 255.255.255.248    | 192.168.203.0 - 192.168.203.7 (usable: .1-.6)    |
| 2                | /30                 | /30               | 4                   | 2                  | 255.255.255.252    | 192.168.203.0 - 192.168.203.3 (usable: .1-.2)    |

### **Explanation**
- **Hosts Needed:** The number of hosts you need in a subnet.
- **Required Subnet:** The smallest possible subnet size that will accommodate the hosts.
- **CIDR Notation:** The CIDR representation of the subnet mask.
- **Total Addresses:** The total number of IP addresses available in that subnet.
- **Usable IPs:** The number of usable IPs, accounting for the network and broadcast addresses.
- **Subnet Mask:** The decimal subnet mask value.
- **Example Address Range:** An example of the IP address range, showing the network address, broadcast address, and usable IP range.

