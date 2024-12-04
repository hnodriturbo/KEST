# Cisco Packet Tracer Commands Summary

## Table of Contents
1. [Initial Router Configuration](#1-initial-router-configuration)
2. [Configure Router Interfaces](#2-configure-router-interfaces)
3. [Configure Default Gateway](#3-configure-default-gateway)
4. [Other Useful Commands](#4-other-useful-commands)
5. [Reflection and Frequently Used Commands](#reflection-and-frequently-used-commands)
6. [Notes](#notes)

---

## 1. Initial Router Configuration

### Command Chain: Enable Privileged Mode and Enter Global Configuration Mode
1. `enable`
   - Enters privileged EXEC mode from user EXEC mode.
2. `configure terminal`
   - Enters global configuration mode to allow changes to the device.

### Configure Device Name
```
hostname [device-name]
```
- Changes the router's name for identification.

### Secure Privileged EXEC Mode
```
enable secret [password]
```
- Sets a password for privileged EXEC mode.

### Secure User EXEC Mode (Console Access)
```
line console 0
password [password]
login
exit
```
- Sets a password for console line access.

### Secure Remote Telnet/SSH Access
- **Telnet Access**
  ```
  line vty 0 4
  password [password]
  login
  exit
  ```
- **SSH Access**
  ```
  ip domain-name [domain-name]
  crypto key generate rsa
  username [username] privilege 15 secret [password]
  line vty 0 4
  transport input ssh
  login local
  exit
  ```
  - Enables SSH by generating an RSA key and setting a username/password for secure access.

### Encrypt All Passwords
```
service password-encryption
```
- Encrypts all plaintext passwords.

### Provide Legal Notification (Banner)
```
banner motd # [Your message of the day] #
```
- Sets a message of the day to provide a legal warning.

### Save Configuration
```
copy running-config startup-config
```
- Saves the current configuration to memory so changes persist after a reboot.

---

## 2. Configure Router Interfaces

### Command Chain: Enter Interface Configuration and Set IP Address
1. `interface [interface-id]`
   - Example: `interface G0/0/0` or `interface G0/0/1`
2. `ip address [IP-address] [subnet-mask]`
   - Sets the IPv4 address for the interface.
3. `no shutdown`
   - Activates the interface.

### Configure IPv6 Address on an Interface
```
interface [interface-id]
ipv6 address [IPv6-address/prefix]
no shutdown
exit
```
- Sets an IPv6 address and activates the interface.

### Verify Interface Configuration
```
show ip interface brief
show ipv6 interface brief
show interfaces
```
- Displays details about the interfaces, including IP address, operational status, and protocol status.

---

## 3. Configure Default Gateway

### Configure IPv4 Default Gateway on a Router
```
ip route 0.0.0.0 0.0.0.0 [next-hop-IP-address]
```
- Configures the default route to reach networks not in the routing table.

### Configure IPv4 Default Gateway on a Switch
```
ip default-gateway [IP-address]
```
- Sets the default gateway on a switch for management purposes.

### Verify Default Gateway Configuration
```
show running-config
```
- Displays the current configuration to confirm the gateway.

---

## 4. Other Useful Commands


### Check IP Routing Table
```
show ip route
show ipv6 route
```
- Displays the routing table, including directly connected (`C`) and local (`L`) routes.

### Verify Active Connections
```
show cdp neighbors
ping [destination-IP]
```
- Displays connected Cisco devices and tests reachability to other devices.

### Save Configuration
```
copy running-config startup-config
```
- Saves the current configuration.

### Reload the Device
```
reload
```
- Restarts the device.

### Erase Configuration
```
write erase
reload
```
- Erases the configuration and reloads the device to restore it to factory default settings.

---

## 5. Reflection and Frequently Used Commands

- **Bring Up an Interface**
  ```
  interface [interface-id]
no shutdown
```
  - Activates an interface that is administratively down.
- **Set the Clock**
  ```
  clock set [hh:mm:ss day month year]
```
  - Sets the router's clock (useful for logging).
- **Save Configuration**
  ```
  copy running-config startup-config
```
  - Always save changes to avoid losing them after a reload.

---

## Notes
1. Always ensure interfaces are enabled using the `no shutdown` command.
2. Verify connections using the `ping` command after configurations are complete.
3. Use `show running-config` to confirm your configurations at any time.
4. Save your work frequently using `copy running-config startup-config`.
