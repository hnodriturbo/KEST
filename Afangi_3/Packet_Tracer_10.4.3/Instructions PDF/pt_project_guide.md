# Packet Tracer Project Guide

## Objectives

### Part 1: Set Up the Topology

1. **Move the Devices**
   - Move the required router and switch from the Shelf to the Rack.
   - Move the required PCs from the Shelf to the Table.

2. **Cable the Devices**
   - Connect all devices as shown in the topology and addressing table.

3. **Power On**
   - Ensure all devices are powered on.

### Part 2: Configure Devices and Verify Connectivity

1. **Assign Static IP Information to PC Interfaces**
   - On **PC-A**, configure the IP address, subnet mask, and default gateway settings.
   - On **PC-B**, configure the IP address, subnet mask, and default gateway settings.
   - **Ping** from PC-A to PC-B and note if successful.
   - **Question**: Why were the pings not successful?

2. **Configure the Router**
   - **Console into the Router** and enable privileged EXEC mode.
   - **Enter Configuration Mode**.
   - **Assign Device Name** to the router.
   - **Set Passwords**:
     - Assign "class" as the privileged EXEC encrypted password.
     - Assign "cisco" as the console password and enable login.
     - Assign "cisco" as the VTY password and enable login.
   - **Encrypt Plaintext Passwords**.
   - **Create Warning Banner** for unauthorized access.
   - **Configure and Activate Interfaces** on the router.
   - **Add Interface Descriptions** indicating which device is connected.
   - **Enable IPv6 Routing** using the `ipv6 unicast-routing` command.
   - **Save the Configuration** to startup configuration.
   - **Set the Clock** on the router (use `?` for help).
   - **Ping from PC-A to PC-B** to verify connectivity.
   - **Question**: Were the pings successful? Explain.

3. **Configure the Switch**
   - **Console into the Switch** and enable privileged EXEC mode.
   - **Enter Configuration Mode**.
   - **Assign Device Name** to the switch.
   - **Configure and Activate VLAN Interface** on Switch S1.
   - **Configure Default Gateway** for Switch S1.
   - **Save the Configuration** to startup configuration.

4. **Verify Connectivity End-to-End**
   - **Ping from PC-A to PC-B**.
   - **Ping from Switch S1 to PC-B**.
   - All pings should be successful.

### Part 3: Display Device Information

1. **Display Routing Table on Router R1**
   - Use the `show ip route` command.
   - **Questions**:
     - What code is used to indicate a directly connected network?
     - How many routes are coded with a "C" in the routing table?
     - What interface types are associated with the "C" coded routes?
   - Use `show ipv6 route` to display IPv6 routes.

2. **Display Interface Information on R1**
   - Use the `show interface g0/0/1` command.
   - **Questions**:
     - What is the operational status of the G0/0/1 interface?
     - What is the MAC address of the G0/1 interface?
     - How is the internet address displayed in this command?
   - Use `show ipv6 interface` for IPv6 details.

3. **Display a Summary of Interfaces**
   - On **R1**, use `show ip interface brief` and `show ipv6 interface brief`.
   - On **S1**, use `show ip interface brief` to see the summary.

### Reflection Questions

1. **Administrative Down Status**
   - If G0/0/1 is administratively down, what command is used to bring it up?

2. **Incorrect IP Configuration**
   - What would happen if interface G0/0/1 was configured with an incorrect IP address, such as 192.168.1.2?

## Next Steps
- Follow the guide step by step to complete your Packet Tracer project.
- When you are ready, use the questions provided to create a separate document with your answers.

