# 13.3.4.6 Lab - Configure Windows Firewall

## Introduction
In this lab, you will explore the Windows Firewall and configure some advanced settings.

## Recommended Equipment
- Two Windows PCs directly connected or connected over the network.
- Computers must be in the same workgroup and network.

## Instructions

### Step 1: Create and share a folder on PC-1.
a. Log on to PC-1 as a member of the administrator group. Ask your instructor for the username and password.
b. Verify that you can ping PC-2.
c. On PC-1, right-click the desktop, select New > Folder, and name the folder Cisco.
d. Right-click the Cisco folder and select Properties > Sharing > Advanced Sharing. Click Share this folder and use the default name Cisco. Click OK. Close the Cisco Properties window.

### Step 2: Use File Explorer or Windows Explorer to view PC-1’s shared folder.
a. Log on to PC-2 as a member of the administrator group. Ask your instructor for the username and password.
b. Open File Explorer or Windows Explorer. In the left pane under Network, expand PC-1.

**Question:**
- Under PC-1, are you able to see the shared folder Cisco?
  
  `Yes`

- Note: If you answered no, ask the instructor for help.
c. Close File Explorer or Windows Explorer.

### Step 3: Open Windows Firewall on PC-1.
- Note: Use PC-1 for the rest of the lab unless otherwise stated.
a. To open the Windows Firewall window click Control Panel > System and Security > Windows Defender Firewall or Windows Firewall.
b. The normal state for the Windows Firewall is On.

**Question:**
- What are the benefits of Windows Firewall?
  
  `Windows Firewall helps protect the computer from unauthorized access, controls the flow of data to and from the computer, and blocks potentially harmful programs or processes.`

### Step 4: Investigate the Windows Firewall Allowed Programs feature.
a. Click Allow an app or feature through Windows Defender Firewall or Allow apps to communicate through Windows Firewall.
b. The Allowed apps window opens. Programs and services that Windows Firewall is not blocking will be listed with a check mark. Click What are the risks of allowing an app to communicate?

**Note:** You can add applications to this list. This may be necessary if you have an application that requires outside communications but for some reason the Windows Firewall cannot perform the configuration automatically.

- Creating too many exceptions in your Programs and Services file can have negative consequences.

**Question:**
- Describe a negative consequence of having too many exceptions.
  
  `Having too many exceptions can weaken the security of the computer as more programs are allowed to communicate through the firewall, potentially opening up more vectors for malicious attacks or unauthorized access.`
### Step 5: Configure the Windows Firewall Allowed apps feature.
a. In the Allowed apps window click Change settings. Remove the check mark from File and Printer Sharing. Click OK.
b. On PC-2, using File Explorer or Windows Explorer, attempt to open the network connect to PC-1.

**Questions:**
- Can you connect to PC-1 and view the Cisco shared folder?
  
  `After removing the check mark from File and Printer Sharing, PC-2 should was not able to connect to the Cisco shared folder on PC-1.`

- Did you receive an error message on PC-2? If so, what was the Error message?
  
  `An error message appeared, indicating that the network path was not found or the folder is inaccessible due to permission settings.`

### Step 6: Explore Advanced Security features in Windows Firewall.
- Note: Use PC-1 for the rest of this lab.
a. Click Control Panel > Administrative Tools > Windows Defender Firewall with Advanced Security or Windows Firewall with Advanced Security.
b. In the left panel of the Windows Defender Firewall with Advanced Security window, you can select items to configure Inbound Rules, Outbound Rules, or Connection Security Rules. Click Inbound Rules.
c. In the middle panel, find the inbound rule named Files and Printer Sharing (Echo Request – ICMPv4-In). Right-click the rule and select Properties, then select the Advanced tab.
d. The Advanced tab displays the profiles used by the computer. Click Customize in the Interface Types area.
e. The Customize Interface Types window displays the different connections configured for your computer. Leave All interface types selected then click OK.
f. Click the Programs and Services tab. In the Services section, click Settings.

**Question:**
- List the short name of four services that are available in the Customize Service Settings window.
  
  `Common services available might include DHCP, DNS, File and Printer Sharing, and Routing and Remote Access.`

### Reflection Question
- What are some possible reasons you may need to make firewall changes?
  
  `Reasons for making firewall changes include tightening security, troubleshooting network connectivity issues, allowing specific applications to communicate through the firewall, or configuring the system for a specific network environment.`

## End of Document
