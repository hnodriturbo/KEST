# 11.3.2.8 Lab - Manage System Files

## Introduction
In this lab, you will use Windows utilities to gather information about the computer.

## Recommended Equipment
- A computer running Windows

## Instructions

### Step 1: Review the System Information
a. To open System Information click Start > Run and type in msinfo32.
b. Click the plus sign next to Hardware Resources, Components, and Software Environment. Expand the window as necessary to see all the content.
c. Under the System Summary heading locate and list the following:
- `Note that I am using a VMWare to emulate windows 2019 server to answer these questions so the processor and bios and physical memory data is not the same in the emulator and in the computer at the school.`
- Processor:
  `AMD ryzen 5 5600H with Radeon Graphics, 3294 MHZ, 1 Core, 1 logical processor.`
- BIOS Version/Date:
  `VMWare 5/22/2023`
- Total Physical Memory:
  `2gb.`

d. Under the Hardware Resources heading locate and list the following:
- DMA channels and the device using the resources.
  `Direct memory access controller`

e. Under the Components heading locate and list the following:
- Adapter Description:
  `Microsoft basic display adapter.`
- Adapter RAM:
  `0 bytes in this case since I am emulating windows.`

f. Under the Software Environment heading, where would you find the applications that automatically load when the computer boots?
  `Startup Programs`
g. Close the System Information window.

### Step 2: Review the System Configuration
a. To open System Configuration click Start and search for msconfig.
(Note: Do not make any changes in this utility without instructor permission.)
b. Click the General tab.
- **Question:**
  - What are the startup options?
    `Normal startup - Diagnostic startup - selective startup`
c. Click the Boot tab. This tab is for modifying boot options.
d. Click the Services tab. This tab lists the computer's services and status.
- **Question:**
  - Can you enable and disable services at this tab?
    `Yes`
e. Click the Startup tab.
- In Windows 10 and 8.1, this tab indicates that the Task Manager is used to manage startup items. There is also a link to the Startup tab of the Task Manager on this tab.
- In Windows 7, this tab lists the programs that are automatically loaded every time you turn on your computer.
f. Click the Tools tab.
- **Question:**
  - What can you do in this tab?
    `You can access various system tools to diagnose, configure, or modify different aspects of Windows operation.`
g. Click Cancel to close the System Configuration window.

### Step 3: Review DirectX Diagnostics
a. Open the DirectX Diagnostic Tool by clicking Start and searching for dxdiag.
b. If asked to check driver signatures click No.
- The DirectX Diagnostic Tool may take a minute to load all information.
c. Ensure the System tab is active.
- **Question:**
  - What does this tool report?
    `System information`
d. Click Next Page until you are at the Display tab.
- **Question:**
  - What information is listed on this page?
    `Display adapter information and driver information.`
e. Click Next Page until you are at the Sound tab.
- **Question:**
  - What information is listed on this page?
    `Sound device information and sound driver device information`
f. Click Next Page until you are on the Input tab.
- **Question:**
  - What information is listed on this page?
    `List of DirectInput devices and input related devices`
g. List any additional tabs in your DirectX Diagnostic Tool window.
- **Question:**
  - What information is listed on these extra tabs?
    `In my case there are no extra tabs but they would most propably list information about adapters and driver information. This tool is helpful for finding out needed information about input devices and system.`
h. Click Exit when finished.

## Reflection Questions
1. Why would it be beneficial to turn off a service in the system configuration?
   `Turning off a service in the system configuration can be beneficial to improve system performance, resolve conflicts between software, enhance security by disabling unnecessary services, or troubleshoot issues related to a specific service.`
2. When would you use the startup tab of the system configuration tool?
   `The startup tab of the system configuration tool is used to manage applications that automatically launch at system startup, which is useful for improving boot times, conserving system resources, and troubleshooting software conflicts or performance issues.`

## End of Document
