```markdown
# **DEVASC v1 — Virtual Machine Lab Environment — Frequently Asked Questions**
**Last Updated 29 July 2020**  
_© 2020 Cisco and/or its affiliates. All rights reserved. This document is Cisco Public. Page 1 of 7_

## **Contents**
- [What is Oracle VirtualBox? Where do I get it and how much does it cost?](#what-is-oracle-virtualbox-where-do-i-get-it-and-how-much-does-it-cost)
- [What is the DEVASC VM?](#what-is-the-devasc-vm)
- [What is the CSR1000v VM?](#what-is-the-csr1000v-vm)
- [How much RAM is needed for the VMs?](#how-much-ram-is-needed-for-the-vms)
- [How do I setup the CSR1000v VM?](#how-do-i-setup-the-csr1000v-vm)
- [I was not able to download the CSR1000v ISO installation file from software.cisco.com. I received a Missing Contract and Service Contract Required message. What can I do?](#i-was-not-able-to-download-the-csr1000v-iso-installation-file-from-softwareciscocom-i-received-a-missing-contract-and-service-contract-required-message-what-can-i-do)
- [How do I determine if NetAcad Maintenance is active on my instructor account?](#how-do-i-determine-if-netacad-maintenance-is-active-on-my-instructor-account)
- [Can I setup the CSR1000v VM without the OVA template file from the “Lab - Install the CSR1000v VM” in Module 7?](#can-i-setup-the-csr1000v-vm-without-the-ova-template-file-from-the-lab---install-the-csr1000v-vm-in-module-7)
- [Can I use the CSR1000v OVA template file that I found at software.cisco.com?](#can-i-use-the-csr1000v-ova-template-file-that-i-found-at-softwareciscocom)
- [Can I use the CSR1000v VM outside of the DevNet Associate course?](#can-i-use-the-csr1000v-vm-outside-of-the-devnet-associate-course)
- [How long does it take for the CSR1000v VM to setup the initial installation from the ISO file?](#how-long-does-it-take-for-the-csr1000v-vm-to-setup-the-initial-installation-from-the-iso-file)
- [How long does it take for the CSR1000v VM to boot-up?](#how-long-does-it-take-for-the-csr1000v-vm-to-boot-up)
- [The fonts and icons are too small in the DEVASC VM. How do I change the VM resolution?](#the-fonts-and-icons-are-too-small-in-the-devasc-vm-how-do-i-change-the-vm-resolution)
- [Importing the OVA file fails with a checksum error. What can I do?](#importing-the-ova-file-fails-with-a-checksum-error-what-can-i-do)
- [I am unable to get the virtual machines to work properly in Oracle VirtualBox. What can I do?](#i-am-unable-to-get-the-virtual-machines-to-work-properly-in-oracle-virtualbox-what-can-i-do)
- [I am unable to get the virtual machines to work properly in VMWare Workstation or Player. What can I do?](#i-am-unable-to-get-the-virtual-machines-to-work-properly-in-vmware-workstation-or-player-what-can-i-do)
- [The virtual machines are running slow on my Windows 10 machine using VirtualBox or VMWare. What can I do?](#the-virtual-machines-are-running-slow-on-my-windows-10-machine-using-virtualbox-or-vmware-what-can-i-do)
- [Where can I find the build/version of my currently used DEVASC VM?](#where-can-i-find-the-buildversion-of-my-currently-used-devasc-vm)
- [What is the password for the “root” user in the DEVASC VM?](#what-is-the-password-for-the-root-user-in-the-devasc-vm)
- [What is the password for the “devasc” user in the DEVASC VM?](#what-is-the-password-for-the-devasc-user-in-the-devasc-vm)
- [Where can I download Packet Tracer 7.4.0T for Network Automation?](#where-can-i-download-packet-tracer-740t-for-network-automation)
- [I am unable to open the course Packet Tracer files. What can I do?](#i-am-unable-to-open-the-course-packet-tracer-files-what-can-i-do)
- [Why are my mouse and keyboard not working outside of the VM?](#why-are-my-mouse-and-keyboard-not-working-outside-of-the-vm)
- [How to change the default English-US keyboard layout?](#how-to-change-the-default-english-us-keyboard-layout)
- [The labs are too long and we are unable to finish it in one class period. What should I do?](#the-labs-are-too-long-and-we-are-unable-to-finish-it-in-one-class-period-what-should-i-do)
- [How do I remove the virtual machines when I am done with the course?](#how-do-i-remove-the-virtual-machines-when-i-am-done-with-the-course)
- [How do I replace a file that was accidentally deleted?](#how-do-i-replace-a-file-that-was-accidentally-deleted)
- [I made a change in a VM, and it is not working properly anymore.](#i-made-a-change-in-a-vm-and-it-is-not-working-properly-anymore)
- [The VM screen is black, what do I do now?](#the-vm-screen-is-black-what-do-i-do-now)
- [The command is really long. What can I do to make it easier?](#the-command-is-really-long-what-can-i-do-to-make-it-easier)
- [I have mistyped a long command. Do I have to retype again to fix it?](#i-have-mistyped-a-long-command-do-i-have-to-retype-again-to-fix-it)

---

_© 2020 Cisco and/or its affiliates. All rights reserved. This document is Cisco Public. Page 2 of 7_

## **What is Oracle VirtualBox? Where do I get it and how much does it cost?**
Oracle VirtualBox is a free, open source, cross-platform virtualization software used in this course to run the course virtual machines. It can be installed on Windows, Linux, and Mac OS X computers. The VirtualBox base software is licensed under the open source GNU General Public License version 2 and is available at no cost. VirtualBox can be downloaded from: https://www.virtualbox.org/wiki/Downloads

**Note:** The virtual machines in this course DO NOT require the installation of a non-free “Oracle VM VirtualBox Extension Pack”, available under the Oracle VirtualBox Personal Use and Evaluation license.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **What is the DEVASC VM?**
The DEVASC Lab VM is a custom-built VM based on Ubuntu 20.04 Linux with Mate Desktop environment. This VM is used in most of the labs in this course, and brings all the software tools that students need to complete the labs:

- Python
- **Python modules:**
  - pip
  - venv
  - pep8
  - requests
  - pylint3
  - tabulate
  - netmiko
  - ncclient
  - pyang
  - webexteamssdk
  - faker
  - flask
  - pyotp
  - pyats\[full\]
  - pipenv
- VS Code
  - ms-python.python VS Code extension
- git
- Chromium
- Postman
- Drawio
- Cisco Packet Tracer 7.4.0T for Network Automation
- Docker
- ssh

https://www.virtualbox.org/wiki/Downloads

_© 2020 Cisco and/or its affiliates. All rights reserved. This document is Cisco Public. Page 3 of 7_

- Ansible  
- sshpass  
- sqlitebrowser  
- vim  
- mc  
- curl  
- net-tools  
- inetutils-traceroute  
- tcptraceroute  
- stunnel4  
- htop  
- VBoxGuestAdditions  
- open-vm-tools open-vm-tools-desktop vmfs-tools

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **What is the CSR1000v VM?**
The CSR1000v VM is a real-world Cisco software router (Cisco Cloud Services Router 1000v), with the modern IOS-XE operating system, running in a Virtual Machine.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **How much RAM is needed for the VMs?**
The DEVASC VM and CSR1000v VM each require 4GB of RAM to run. For most of the labs, only the DEVASC VM is used so 4GB of free RAM is enough.

For labs in Module 7, where both VMs are required to run at the same time, you need 8GB of free RAM on your host computer. If you do not have the required amount of RAM to run both VMs on a single host computer, you can run the first VM on one host computer, while the second VM runs on another host computer in the same LAN. In this case, change the CSR1000v network setting in VirtualBox (or VMWare) for the LAN network from “Host-only” to “Bridged”. This will enable IP reachability from the DEVASC VM to the CSR1000v over the LAN network.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **How do I setup the CSR1000v VM?**
Download the CSR1000v OVA virtual machine template file using the link from the “Lab - Install the CSR1000v VM” in Module 7 and follow the lab instructions to setup the virtual machine. The specific CSR1000v installation ISO file download link at software.cisco.com is also available in the “Lab - Install the CSR1000v VM” in Module 7.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **I was not able to download the CSR1000v ISO installation file from software.cisco.com. I received a Missing Contract and Service Contract Required message. What can I do?**
The CSR1000v ISO installation file from software.cisco.com is only available to instructors with activated Academy Maintenance contract. To learn more about NetAcad Maintenance, please visit the Equipment Information resources page at https://www.netacad.com/portal/resources/equipment-information

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **How do I determine if NetAcad Maintenance is active on my instructor account?**
Login to Cisco's Contracts Management portal, and check if the Contact number 95698496 is listed under your Current Access contracts. If it is not listed, please use the instructions at https://www.netacad.com/portal/resources/equipment-information to activate your Networking Academy Maintenance contract.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **Can I setup the CSR1000v VM without the OVA template file from the “Lab - Install the CSR1000v VM” in Module 7?**
Technically you could, but it is not recommended. The CSR1000v OVA template file in the “Lab - Install the CSR1000v VM” in Module 7 includes all the required VM settings as well as the initial configuration of the router as used in the DevNet Associate course.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **Can I use the CSR1000v OVA template file that I found at software.cisco.com?**
No. The CSR1000v OVA template file available on software.cisco.com is for enterprise deployments and does not include the VM settings and the initial configuration of the router as used in the DevNet Associate course.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **Can I use the CSR1000v VM outside of the DevNet Associate course?**
You can legally use the CSR1000v VM downloaded using your NetAcad Maintenance account from software.cisco.com only for the Cisco Networking Academy approved courses:

- DevNet Associate
- Emerging Technologies Workshop: Model-Driven Programmability

To use the CSR1000v outside of these courses, you need written permission from Cisco, or you need to purchase a valid license.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **How long does it take for the CSR1000v VM to setup the initial installation from the ISO file?**
It can take up to 10-15 minutes for CSR1000v VM to complete the installation from the ISO file downloaded from software.cisco.com. There is no installation progress bar, or any other indicator of the installation. However, you can see the HDD icon in the VirtualBox window blinking, which indicates that files are being setup on the virtual HDD.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **How long does it take for the CSR1000v VM to boot-up?**
It can take up to 5-10 minutes for CSR1000v VM to boot-up.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **The fonts and icons are too small in the DEVASC VM. How do I change the VM resolution?**
https://www.netacad.com/portal/resources/equipment-information  
https://rpfa.cloudapps.cisco.com/rpfa/profile/edit_entitlement.do  
https://www.netacad.com/portal/resources/equipment-information

_© 2020 Cisco and/or its affiliates. All rights reserved. This document is Cisco Public. Page 5 of 7_

Use the `xrandr --output Virtual1 --scale 0.8x0.8` command to change the scaling factor (experiment with the 0.8x0.8 scaling factor in the range from 0.5x0.5 to 0.9x0.9).

After you identified a preferred scaling factor, you can create a quick Launcher icon on the desktop. Right click Desktop > Create Launcher... In the Name field, enter Scaler. In the Command field, enter above command with your preferred scaling factor. Click OK to save.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **Importing the OVA file fails with a checksum error. What can I do?**
Verify the checksum of your downloaded files with the following checksums:

**The DEVASC_VM.ova file (build 2020.07.21) SHA256 checksum is:**  
`9B5F3A56884532AAA6C1A55DA78CA0AAEC1DB3E38FEAD5EAAE3D0C09F975686A`

**The CSR1000v_for_VirtualBox.ova file SHA256 checksum is:**  
`59482033F86284101CABE2D50E827E8C2B4CE232EE16FACB8E0E5D3C2A67534C`

**The CSR1000v_for_VMware.ova SHA256 checksum is:**  
`64380FF0B3AEB7BFCEF817CBAEC012784A5242D1E13191B6741D21AB69277FEB`

For the CSR1000v ISO installation file from software.cisco.com, you find the Checksum on the download page.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **I am unable to get the virtual machines to work properly in Oracle VirtualBox. What can I do?**
If you currently have a version of Oracle VirtualBox that is older than the 6.1.12 version, you need to update to the 6.1.12 version or higher for the virtual machines to work properly.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **I am unable to get the virtual machines to work properly in VMWare Workstation or Player. What can I do?**
While the DEVASC VM and the CSR1000v VM should work on VMWare Workstation and VMWare Player, official Networking Academy support is provided only for running these VMs on VirtualBox. Please use the community support channels (NetAcad Forum or NetAcad Instructors Group at Facebook) to get support.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **The virtual machines are running slow on my Windows 10 machine using VirtualBox or VMWare. What can I do?**
Check if Microsoft Hyper-V is enabled on your Windows 10 machine. While the recent versions of VirtualBox and VMWare (Workstation or Player) do support running on top of Microsoft’s own hypervisor (Hyper-V), sometimes the performance of the virtual machines is slower than with the native VirtualBox or VMWare virtualization. Click Start and search for Windows Features. Open the Turn Windows features on or off setting. Wait for the features to populate and then uncheck Hyper-V. Click OK.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **Where can I find the build/version of my currently used DEVASC VM?**
The DEVASC VM build/version is visible in the desktop background image, right above the Cisco logo of the device at bottom right (e.g. Netacad DEVASC Lab VM (Build 2020-06-17).

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **What is the password for the “root” user in the DEVASC VM?**
The root user is not active on the DEVASC VM. Should you need to run any commands with “root” user privileges, use the sudo command.

https://community.cisco.com/t5/networking-academy/ct-p/netacad  
https://www.facebook.com/groups/netacadinstructors

_© 2020 Cisco and/or its affiliates. All rights reserved. This document is Cisco Public. Page 6 of 7_

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **What is the password for the “devasc” user in the DEVASC VM?**
Cisco123! is the devasc user password.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **Where can I download Packet Tracer 7.4.0T for Network Automation?**
The new build of Packet Tracer that has added an SDN Controller capability feature is at this moment only available as pre-installed in the DEVASC VM.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **I am unable to open the course Packet Tracer files. What can I do?**
All the Packet Tracer files in the course have been created using the new Packet Tracer 7.4.0T for Network Automation. At this moment, this version of Packet Tracer only available as pre-installed in the DEVASC VM.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **Why are my mouse and keyboard not working outside of the VM?**
If your keyboard or mouse will not function outside of the VM, press the CTRL key that is on the right side of the keyboard. This is called the VirtualBox host key. The host key is shown on the lower right-hand corner of the VM window. Other host operating systems may use another key as the host key.

In VMWare, use the combination of CTRL+ALT keys to exit the VMs.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **How to change the default English-US keyboard layout?**
You can use the “Keyboard” shortcut on the desktop to add or modify the keyboard layouts.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **The labs are too long and we are unable to finish it in one class period. What should I do?**
Become familiar with the labs before class if possible.

The state of the VM can be saved so that you can continue the labs at a later time. To save the VM state, click Save the machine state and then click OK when closing the VM. The next time you start the virtual machine, you will be able to resume working in the operating system from the saved state.

When you are ready to resume the labs, select the desired VM and click Start. The VM will start in the same state as when it was saved.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

_© 2020 Cisco and/or its affiliates. All rights reserved. This document is Cisco Public. Page 7 of 7_

## **How do I remove the virtual machines when I am done with the course?**
1) Shut down the VM.  
2) Right-click the VM > Remove, select Delete all files

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **How do I replace a file that was accidentally deleted?**
You will need to reinstall the VM:

1) Shut down the VM.  
2) Right-click the VM > Remove, select Delete all files  
3) Re-import the VM: File > Import Appliance

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **I made a change in a VM, and it is not working properly anymore.**
You will need to reinstall the VM:

1) Shut down the VM.  
2) Right-click the VM > Remove, select Delete all files  
3) Re-import the VM: File > Import Appliance

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **The VM screen is black, what do I do now?**
When the VM has been idle for some time, the screen may be black. Click anywhere within the VM to display the login screen.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **The command is really long. What can I do to make it easier?**
Linux is designed for the command line interface. Several features are included to facilitate entering commands. One of those features is TAB key autocompletion. When typing a command or a directory path, use the TAB key to complete it. Linux will display the possible completions if the typed portion isn’t unique. Linux will autocomplete the command or path as soon as the typed portion is unique.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_

## **I have mistyped a long command. Do I have to retype again to fix it?**
You can use the up arrow to access the commands that were executed earlier in the same terminal window. The command can then be edited.

_[Back to Top](#devasc-v1--virtual-machine-lab-environment--frequently-asked-questions)_
```
