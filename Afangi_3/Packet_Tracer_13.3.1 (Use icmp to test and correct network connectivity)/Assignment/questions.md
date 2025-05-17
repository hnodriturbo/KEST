# Packet Tracer - Use ICMP to Test and Correct Network Connectivity

## Introduction to ICMP
The Internet Control Message Protocol (ICMP) is used by network devices to send error messages and operational information. ICMP is primarily used for diagnostic or control purposes and is integral to tools like `ping` and `traceroute`.

## Addressing Table
| Device       | Interface | Address          | Mask/Prefix       | Default Gateway |
|--------------|-----------|------------------|-------------------|-----------------|
| RTR-1        | G/0/0/0   | 192.168.1.1      | 255.255.255.0     | N/A             |
| RTR-1        | G/0/0/0   | 2001:db8:4::1    | /64               | N/A             |
| RTR-1        | S0/1/0    | 10.10.2.2        | 255.255.255.252   | N/A             |
| RTR-1        | S0/1/0    | 2001:db8:2::2    | /126              | N/A             |
| RTR-1        | S0/1/1    | 10.10.3.1        | 255.255.255.252   | N/A             |
| RTR-1        | S0/1/1    | 2001:db8:3::1    | /126              | N/A             |
| RTR-2        | G/0/0/0   | 10.10.1.1        | 255.255.255.0     | N/A             |
| RTR-2        | G0/0/1    | 2001:db8:1::1    | /64               | N/A             |
| RTR-2        | S0/1/0    | 10.10.2.1        | 255.255.255.252   | N/A             |
| RTR-2        | S0/1/0    | 2001:db8:2::1    | /126              | N/A             |
| RTR-3        | G0/0/0    | 10.10.5.1        | 255.255.255.0     | N/A             |
| RTR-3        | G0/0/1    | 2001:db8:5::1    | /64               | N/A             |
| RTR-3        | S0/1/0    | 10.10.3.2        | 255.255.255.252   | N/A             |
| RTR-3        | S0/1/0    | 2001:db8:3::2    | /126              | N/A             |
| PC-1         | NIC       | 10.10.1.10       | 255.255.255.0     | 10.10.1.1       |
| Laptop A     | NIC       | 10.10.1.20       | 255.255.255.0     | 10.10.1.1       |
| PC-2         | NIC       | 2001:db8:1::10   | /64               | fe80::1         |
| PC-3         | NIC       | 2001:db8:1::20   | /64               | fe80::1         |
| PC-4         | NIC       | 10.10.5.10       | 255.255.255.0     | 10.10.5.1       |
| Server 1     | NIC       | 10.10.5.20       | 255.255.255.0     | 10.10.5.1       |
| Laptop B     | NIC       | 2001:db8:5::10   | /64               | fe80::1         |
| Laptop C     | NIC       | 2001:db8:5::20   | /64               | fe80::1         |
| Corporate Server | NIC   | 203.0.113.100    | 255.255.255.0     | 203.0.113.1     |
| Corporate Server | NIC   | 2001:db8:acad::100 | /64             | fe80::1         |

## Objectives
In this lab, you will:
- Use ICMP to locate connectivity issues.
- Configure network devices to correct connectivity issues.

## Instructions
1. **Wait until all link lights are green.**
2. **Select a host and use ICMP ping to determine which hosts are reachable from that host.**
  - Command: `ping <IP Address>`
3. **If a host is found to be unreachable, use ICMP trace to locate the general location of the network errors.**
  - Command: `traceroute <IP Address>`
4. **Locate the specific errors and correct them.**

## Questions
1. **What is ICMP and what is it used for?**
  - ICMP stands for Internet Control Message Protocol. It is used by network devices to send error messages and operational information.

2. **How do you use the `ping` command to test connectivity?**
  - The `ping` command sends ICMP Echo Request messages to the target host and waits for an ICMP Echo Reply. Example: `ping 10.10.1.10`

3. **How do you use the `traceroute` or `tracert` command to locate network issues?**
  - The `traceroute` command traces the path packets take to reach the target host, showing each hop along the way. Example: `traceroute 10.10.1.10`

4. **What steps would you take if a host is unreachable?**
  - Use `ping` to test connectivity.
  - If unreachable, use `traceroute` to identify where the connection fails.
  - Check and correct configuration issues on the identified network devices.

## Conclusion
By following these steps and using ICMP tools, you can diagnose and correct network connectivity issues effectively.
