# Packet Tracer Assignment 2.9.2

## Table of Contents
1. [Overview](#overview)
2. [Objective](#objective)
3. [Devices Used In This Project](#devices-used-in-this-project)
4. [Design Of Project](#design-of-project)
5. [Configurations Made To Meet The Assignment's Requirements](#configurations-made-to-meet-the-assignments-requirements)
6. [More Detailed Configurations (If Needed)](#more-detailed-configurations-if-needed)
7. [Other Device Configurations](#other-device-configurations)
8. [Verification](#verification)
9. [Conclusion](#conclusion)
10. [Screenshots](#screenshots)





## Overview
 - In this chapter, we're diving into setting up and configuring a network that includes routers, switches, and a server to act as a WLC. It's all about seeing how these devices interact in a controlled environment and getting a real feel for network management.




### Objective
 - This assignment aims to sharpen our skills in configuring and verifying network settings, focusing on communication between devices using various protocols. We're setting the stage for more complex networking tasks down the line.




### Devices Used In This Project
 - We're working with a couple of **Cisco routers (2811 and 2621XM)**, a **Cisco switch (2960)**, and another **Cisco switch (3650)** that really bring our network to life. There’s also a server set up to simulate a Wireless LAN Controller.




### Design Of Project
 - The design is straightforward yet sophisticated. We've got the routers and switches configured to ensure smooth data flow. Each device plays a critical role, from managing traffic between network segments to ensuring data reaches its destination securely and efficiently.




### Configurations Made To Meet The Assignment's Requirements
 - We started by setting up the network topology in Packet Tracer, connecting devices with the right cables and ensuring they're powered on. Here’s a quick run-through:
    - Connected the routers to the core switch.
    - Linked the access switch to the core switch and connected PCs to this access switch.
    - All devices were configured with the necessary IP addresses and subnet masks.




### More Detailed Configurations (If Needed)
 - For the routers, we dove into more granular settings:
    - Configured OSPF to manage the routing effectively.
    - Set up NAT on one of the routers to allow devices to access external networks using one public IP address.




### Other Device Configurations
 - The switches were set up to handle traffic within the network:
    - VLAN configurations were applied to segment the network logically.
    - STP was enabled to prevent network loops, which can disrupt network communication.




### Verification
 - To make sure everything was up to snuff, we tested connectivity across the network using the ping command. It was crucial to ensure data packets were happily hopping from one device to another without any hiccups.




### Conclusion
 - Through this project, I’ve learned heaps about how different network devices interact and the importance of precise configuration. It’s one thing to study these concepts in books, but seeing them in action is a whole other level of learning.




## Screenshots
 - Here's a look at screenshots I took during the project and some proofs of finishing this project.

![Verification and Testing](../Screenshots/packet_trace.2.9.2-ping.jpg)
"Testing connectivity between devices with ping command."

![Verification and Testing](../Screenshots/Activity_Results_Completion_Of_Activity_Showing_User_Profile.jpg)
"Completion status showing successful configuration and connection."

![Verification and Testing](../Screenshots/pc-b-show-running-config.jpg)
"Checking the running configuration on PC-B."

![Verification and Testing](../Screenshots/ping_from_pcA_to_switches.jpg)
"Pinging from PC-A to switches to verify network paths."

![Verification and Testing](../Screenshots/show_terminal_information_pc_a.jpg)
"Terminal output on PC-A showing detailed network status."
