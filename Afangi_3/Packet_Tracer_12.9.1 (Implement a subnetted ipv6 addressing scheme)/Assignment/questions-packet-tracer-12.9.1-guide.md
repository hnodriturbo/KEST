# **Packet Tracer Assignment: Implement IPv6 Subnetting and Configuration**

This guide will walk you step-by-step through everything you need to do in Cisco Packet Tracer to configure the IPv6 subnets and complete your assignment as efficiently as possible.

## **Objective**

- Configure five IPv6 subnets starting from the given address `2001:db8:acad:00c8::/64`.
- Subnet and configure router interfaces for R1 and R2.
- Configure R1 to R2 link network.

---

# **Step-by-Step Instructions**

---

## **1. Setup Packet Tracer Environment**

- **Open Cisco Packet Tracer**.
- **Add Devices to Workspace**:
  - **Drag and drop routers**: Two routers named **R1** and **R2**.
  - **Drag and drop switches**: Two switches named **S1** (connected to R1) and **S2** (connected to R2).
  - **Add End Devices (PCs)** to each switch:
    - Connect **PC1** to **S1**.
    - Connect **PC2** to **S2**.
  - **Connect Routers** using serial or crossover cable.

---

## **2. Physical Connections**

- **Connect Router R1 and S1**:
  - Use **copper straight-through cable** from **GigabitEthernet0/0** on **R1** to **GigabitEthernet0/1** on **S1**.
- **Connect Router R2 and S2**:
  - Use **copper straight-through cable** from **GigabitEthernet0/0** on **R2** to **GigabitEthernet0/1** on **S2**.
- **Connect R1 to R2**:
  - Use **crossover cable** to connect **GigabitEthernet0/1** on **R1** to **GigabitEthernet0/1** on **R2**.

---
---
### **Note that the packet tracer assignment came with this settings in section 1 and 2 setup beforehand.**
---
---

## **3. Assign IPv6 Addresses to Router Interfaces**

- **Open CLI for Router R1**:

  - **Select R1** and **click on CLI** tab.
  - **Enter privileged mode**:
    ```plaintext
    Router> enable
    ```
  - **Enter global configuration mode**:
    ```plaintext
    Router# configure terminal
    ```

- **Configure Interfaces on R1**:

  - **GigabitEthernet0/0 (LAN)**
    ```plaintext
    Router(config)# Router(config-if)# ipv6 address 2001:db8:acad:00cc::1/64
    Router(config-if)# ipv6 address 2001:db8:acad:00c8::1/64
    Router(config-if)# ipv6 address fe80::1 link-local
    Router(config-if)# no shutdown
    Router(config-if)# no shutdown
    ```
  - **GigabitEthernet0/1 (Link to R2)**
    ```plaintext
    Router(config)# interface gigabitEthernet 0/1
    Router(config-if)# ipv6 address 2001:db8:acad:00c9::1/64
    Router(config-if)# ipv6 address fe80::2 link-local
    Router(config-if)# no shutdown
    ```
  - **Exit Configuration Mode**:
    ```plaintext
    Router(config-if)# exit
    ```

- **Open CLI for Router R2**:

  - **Select R2** and **click on CLI** tab.
  - **Enter privileged mode**:
    ```plaintext
    Router> enable
    ```
  - **Enter global configuration mode**:
    ```plaintext
    Router# configure terminal
    ```

- **Configure Interfaces on R2**:

  - **GigabitEthernet0/0 (LAN)**
    ```plaintext
    Router(config)# interface gigabitEthernet 0/0
    Router(config-if)# ipv6 address 2001:db8:acad:00ca::1/64
    Router(config-if)# ipv6 address fe80::3 link-local
    Router(config-if)# no shutdown
    ```
  - **GigabitEthernet0/1 (Link to R1)**
    ```plaintext
    Router(config)# interface gigabitEthernet 0/1
    Router(config-if)# ipv6 address 2001:db8:acad:00cb::2/64
    Router(config-if)# ipv6 address fe80::4 link-local
    Router(config-if)# no shutdown
    ```
  - **Exit Configuration Mode**:
    ```plaintext
    Router(config-if)# exit
    ```

---

## **4. Enable IPv6 Routing**

- **On both R1 and R2**, enter the following command to enable IPv6 routing:
  ```plaintext
  Router(config)# ipv6 unicast-routing
  ```

---

## **5. Configure End Devices (PCs)**

To set IPv6 to auto-configure on each PC:

- **Select PC-1**:
  - **Click on Desktop tab**.
  - **Select IP Configuration**.
  - **Select Auto Config for IPv6 Address**. This will automatically configure the link-local and global addresses for the PC.

- **Select PC-2**:
  - **Click on Desktop tab**.
  - **Select IP Configuration**.
  - **Select Auto Config for IPv6 Address**. This will automatically configure the link-local and global addresses for the PC.

- **Select PC-3**:

  - **Click on Desktop tab**.
  - **Select IP Configuration**.
  - **Select Auto Config for IPv6 Address**. This will automatically configure the link-local and global addresses for the PC.

- **Select PC-4**:

  - **Click on Desktop tab**.
  - **Select IP Configuration**.
  - **Select Auto Config for IPv6 Address**. This will automatically configure the link-local and global addresses for the PC.

#### **6. Test Connectivity**

- **Use the CLI on PCs to test connectivity**:
  - **Open PC1** and use the following command to **ping PC2**:
    ```plaintext
    PC> ping 2001:db8:acad:00ca::2
    ```
  - You should see successful ping responses if everything is configured correctly.

#### **7. Verify Router Configurations**

- **Check IPv6 Routing Table on R1 and R2**:
  - In the CLI of **R1** and **R2**, enter:
    ```plaintext
    Router# show ipv6 route
    ```
  - Verify that the routing table has the correct entries for the subnets.

#### **8. Save Configurations**

- **Save running configuration** to NVRAM on both routers to avoid losing configuration after reboot:
  ```plaintext
  Router# write memory
  ```

---

### **Quick Recap**

- **Setup environment**: Add routers, switches, PCs, and connect with cables.
- **Configure routers**: Assign IPv6 addresses to interfaces on **R1** and **R2**.
- **Enable IPv6 routing** and **configure PCs**.
- **Test connectivity** using ping and **verify routing tables**.
- **Save configurations** to ensure settings persist.

You are now ready to submit your assignment with the configured IPv6 addressing scheme!

Let me know if there’s anything else you need or if you'd like more detailed explanations for any of these steps.

