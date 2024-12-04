# VLSM Addressing Scheme - Addressing Table

In this document, I have created the addressing table for the VLSM scheme as per the project requirements.

| Subnet Description   | Number of Hosts Needed | Network Address / CIDR | Subnet Mask      | First Usable Host Address | Subnet Mask      | Second Usable Host Address | Subnet Mask      | Last Usable Host Address | Subnet Mask      | Broadcast Address | Subnet Mask      |
| -------------------- | ---------------------- | ---------------------- | ---------------- | ------------------------- | ---------------- | -------------------------- | ---------------- | ------------------------ | ---------------- | ----------------- | ---------------- |
| Remote-2 LAN         | 32                     | 192.168.203.0/26       | 255.255.255.192  | 192.168.203.1             | 255.255.255.192  | 192.168.203.2              | 255.255.255.192  | 192.168.203.62          | 255.255.255.192  | 192.168.203.63    | 255.255.255.192  |
| HQ-2 LAN             | 21                     | 192.168.203.64/27      | 255.255.255.224  | 192.168.203.65            | 255.255.255.224  | 192.168.203.66             | 255.255.255.224  | 192.168.203.94          | 255.255.255.224  | 192.168.203.95    | 255.255.255.224  |
| Remote-1 LAN         | 19                     | 192.168.203.96/27      | 255.255.255.224  | 192.168.203.97            | 255.255.255.224  | 192.168.203.98             | 255.255.255.224  | 192.168.203.126         | 255.255.255.224  | 192.168.203.127   | 255.255.255.224  |
| HQ-1 LAN             | 14                     | 192.168.203.128/28     | 255.255.255.240  | 192.168.203.129           | 255.255.255.240  | 192.168.203.130            | 255.255.255.240  | 192.168.203.142         | 255.255.255.240  | 192.168.203.143   | 255.255.255.240  |
| Point-to-Point WAN   | 2                      | 192.168.203.144/30     | 255.255.255.252  | 192.168.203.145           | 255.255.255.252  | 192.168.203.146            | 255.255.255.252  | N/A                     | N/A              | 192.168.203.147   | 255.255.255.252  |
| HQ Router (WAN)      | 1                      | 192.168.203.144/30     | 255.255.255.252  | 192.168.203.145           | 255.255.255.252  | N/A                       | N/A              | N/A                     | N/A              | N/A               | N/A              |
| Remote Router (WAN)  | 1                      | 192.168.203.144/30     | 255.255.255.252  | 192.168.203.146           | 255.255.255.252  | N/A                       | N/A              | N/A                     | N/A              | N/A               | N/A              |

## Notes

- **CIDR Notation**: Classless Inter-Domain Routing (CIDR) notation is used to specify the number of bits used for the network portion of an IP address. For example, `/26` means that the first 26 bits are used for the network, and the remaining bits are used for host addresses.
- **Broadcast Address**: The broadcast address is the last IP address in a subnet, used to send data to all hosts on that subnet.
- **Subnet Mask**: The subnet mask defines which portion of an IP address is the network part and which is the host part. Each subnet has a different subnet mask depending on the number of hosts needed.
- **Device Assignments**:
  - **Router Interfaces**: The **first usable IP address** from each subnet is assigned to the router interface that connects to that LAN. This IP acts as the **default gateway** for devices in that LAN.
  - **Switches**: The **second usable IP address** from each subnet is typically assigned to the switch's management interface (VLAN 1).
  - **Hosts**: The **last usable IP address** in each subnet is assigned to one of the hosts within that subnet.

## Next Steps

- Assign IP addresses to devices according to the calculated subnets.
- Configure the routers, switches, and hosts in Packet Tracer.
- Verify the network connectivity through ping tests.

## Step-by-Step Guide

### Step 1: Calculate the Subnet Requirements

1. **List all the LANs** and their respective host requirements, which are:

   - **Remote-2 LAN**: 32 Hosts
   - **HQ-2 LAN**: 21 Hosts
   - **Remote-1 LAN**: 19 Hosts
   - **HQ-1 LAN**: 14 Hosts
   - **Point-to-Point WAN**: 2 Hosts

2. **Start Allocating Subnets** from the network `192.168.203.0/24`.

   - Always start with the **largest requirement** first to minimize wasted address space.

### Step 2: Subnetting the Network Address

1. **Assign a Subnet for Remote-2 LAN** (32 Hosts):

   - Calculate the required number of IPs:  (satisfies 32 hosts)
   - **CIDR Notation**: `/26`
   - Assign Network Address for Remote-2 LAN: `192.168.203.0/26`
   - Calculate the range:
     - **First Usable Address**: `192.168.203.1`
     - **Broadcast Address**: `192.168.203.63`

2. **Assign a Subnet for HQ-2 LAN** (21 Hosts):

   - Calculate the required number of IPs:  (satisfies 21 hosts)
   - **CIDR Notation**: `/27`
   - Assign Network Address for HQ-2 LAN: `192.168.203.64/27`
   - Calculate the range:
     - **First Usable Address**: `192.168.203.65`
     - **Broadcast Address**: `192.168.203.95`

3. **Assign a Subnet for Remote-1 LAN** (19 Hosts):

   - Required number of IPs:  (satisfies 19 hosts)
   - **CIDR Notation**: `/27`
   - Assign Network Address for Remote-1 LAN: `192.168.203.96/27`
   - Calculate the range:
     - **First Usable Address**: `192.168.203.97`
     - **Broadcast Address**: `192.168.203.127`

4. **Assign a Subnet for HQ-1 LAN** (14 Hosts):

   - Required number of IPs:  (satisfies 14 hosts)
   - **CIDR Notation**: `/28`
   - Assign Network Address for HQ-1 LAN: `192.168.203.128/28`
   - Calculate the range:
     - **First Usable Address**: `192.168.203.129`
     - **Broadcast Address**: `192.168.203.143`

5. **Assign a Subnet for the Point-to-Point WAN Link** (2 Hosts):

   - Required number of IPs:
   - **CIDR Notation**: `/30`
   - Assign Network Address for Point-to-Point: `192.168.203.144/30`
   - Calculate the range:
     - **First Usable Address**: `192.168.203.145`
     - **Broadcast Address**: `192.168.203.147`

### Step 3: Fill in the Addressing Table

Use the calculated information to fill out the provided table in your VLSM Addressing Scheme document.

### Step 4: Assign IP Addresses to Devices

1. **HQ Router Configuration**:

   - Assign **first usable IP** for each LAN to the **HQ router interfaces**.
   - For the WAN link, assign the **first usable IP** on the **HQ side**.

2. **Remote Router Configuration**:

   - Assign **first usable IP** for each LAN to the **Remote router interfaces**.
   - Assign **last usable IP** for the **WAN link** on the **Remote side**.

3. **Switches**:

   - Assign the **second usable IP** of each subnet to the **switch** connected to the respective LAN.

4. **Hosts**:

   - Assign the **last usable IP** of each subnet to the hosts.

### Step 5: Configure Devices in Packet Tracer

1. **Open Packet Tracer** and place routers, switches, and hosts according to the topology.
2. **Configure IP Addresses** on each device:
   - Go to each router and use the `interface` commands to assign IP addresses.
   - Configure default gateways for each host to match their corresponding subnet router interface.

### Step 6: Verify Connectivity

1. **Ping Tests**:
   - Ping between hosts in the same subnet to ensure **intra-subnet communication**.
   - Ping between hosts across different subnets to verify **inter-subnet communication**.
   - Ensure all routers, switches, and hosts can communicate as expected.

### Step 7: Troubleshoot (if needed)

1. **Check IP Configuration**: Make sure all devices have the correct IP addresses and subnet masks.
2. **Check Routing**: If using static routing or dynamic routing protocols, ensure routes are correctly configured.
3. **Test Connectivity Again**: After making corrections, re-run the ping tests to confirm the network is fully operational.

