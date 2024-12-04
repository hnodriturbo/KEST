# Network Addressing Project for LAN/WAN Configuration

### Overview of the Project

In the project, the primary goal was to use the given **base network address (10.1.1.0/24)** and segment it into smaller subnets using appropriate subnet masks to accommodate the necessary number of hosts in each LAN and WAN connection. This ensured that all parts of the network had unique addresses while minimizing IP wastage. I also configured each router and switch with IP addresses and default gateways, ensuring that all devices can be managed remotely and communicate properly. 

The table below summarizes the IP addressing scheme that i made for this project, including the **device, interface, IP address, subnet mask, and default gateway**. The information reflects the practical configuration for each device to ensure connectivity and proper routing within the network.

# The First Tablea

| **Device** | **Interface** | **IP Address** | **Subnet Mask**   | **Default Gateway** |
|------------|---------------|----------------|-------------------|---------------------|
| East       | G0/0          | 10.1.1.97      | 255.255.255.240   | N/A                 |
| East       | G0/1          | 10.1.1.65      | 255.255.255.224   | N/A                 |
| East       | S0/0/0        | 10.1.1.121     | 255.255.255.252   | N/A                 |
| West       | G0/0          | 10.1.1.113     | 255.255.255.248   | N/A                 |
| West       | G0/1          | 10.1.1.1       | 255.255.255.192   | N/A                 |
| West       | S0/0/0        | 10.1.1.122     | 255.255.255.252   | N/A                 |
| ES-1       | VLAN 1        | 10.1.1.98      | 255.255.255.240   | 10.1.1.97           |
| ES-2       | VLAN 1        | 10.1.1.66      | 255.255.255.224   | 10.1.1.65           |
| WS-1       | VLAN 1        | 10.1.1.114     | 255.255.255.248   | 10.1.1.113          |
| WS-2       | VLAN 1        | 10.1.1.2       | 255.255.255.192   | 10.1.1.1            |
| E1-22      | NIC           | 10.1.1.110     | 255.255.255.240   | 10.1.1.97           |
| E2-47      | NIC           | 10.1.1.94      | 255.255.255.224   | 10.1.1.65           |
| W1-201     | NIC           | 10.1.1.118     | 255.255.255.248   | 10.1.1.113          |
| W2-87      | NIC           | 10.1.1.62      | 255.255.255.192   | 10.1.1.1            |



# The Secon Table

| **Subnet Description**         | **Number of Hosts Needed** | **Network Address/CIDR** | **First Usable Host Address** | **Broadcast Address** | **Default Gateway** |
|--------------------------------|---------------------------|--------------------------|-------------------------------|-----------------------|---------------------|
| East Router to ES-1            | 28                        | 10.1.1.0/27              | 10.1.1.1                      | 10.1.1.31             | N/A                 |
| East Router to ES-2            | 11                        | 10.1.1.32/28             | 10.1.1.33                     | 10.1.1.47             | N/A                 |
| West Router to WS-1            | 47                        | 10.1.1.48/26             | 10.1.1.49                     | 10.1.1.111            | N/A                 |
| West Router to WS-2            | 5                         | 10.1.1.112/29            | 10.1.1.113                    | 10.1.1.119            | N/A                 |
| WAN Link (Router East to West) | 2                         | 10.1.1.120/30            | 10.1.1.121 / 10.1.1.122       | 10.1.1.123            | N/A                 |


### Project Summary

The main challenge in this project was to ensure that all **LAN segments** and the **WAN link** were correctly subnetted to meet the required number of hosts without wasting IP addresses. By carefully planning the subnets, I was able to provide **sufficient IP addresses** for each segment while ensuring **efficient use** of the available address space. Additionally, I configured each switch with a management IP address to enable remote access, which allows for better control and troubleshooting of the network.

The project involved not only the calculation and assignment of IP addresses but also the practical configuration of routers and switches in Packet Tracer. This hands-on aspect gave me the opportunity to understand both the theoretical aspects of IP subnetting and the practical skills of configuring network devices to achieve a functional network infrastructure.

Thanks
Regards
Hreidar Petursson

