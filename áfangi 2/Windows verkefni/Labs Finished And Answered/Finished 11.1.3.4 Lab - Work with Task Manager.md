# 11.1.3.4 Lab - Work with Task Manager

## Introduction

In this lab, you will explore Task Manager and manage processes from within Task Manager.

## Required Resources

- A computer running Windows

## Instructions

### Step 1: Applications tab.
a. Log on to Windows as an administrator.
b. Open a web browser and a folder.
c. Click Start and type task manager in the search field. Press Enter to open the Task Manager utility.
(Note: For Windows 8.x use the charms menu and then click the search icon. Type task manager and
press Enter to open the Task Manager utility.)
d. Click Fewer details if available to view the list of open applications.
e. To force the web browser to close highlight the browser and click End task.

**Question:**
- What happened?
  
  `The application closed without any complications.`

f. Open the web browser again. Right-click the web browser in the Task Manager.

**Question:**
- What options are available?

  `End task, resource values, Provide feedback(not clickable), create dump file, go to details, open file location, search online and properties.`

### Step 2: Services tab.
a. Click More Details at the bottom-left corner of Task Manager. Note: It is not available in Windows 7.
b. Click the Services tab. Use the scroll bar on the right side of the Services window to view all the services listed

**Question:**
- What statuses are listed?

  `Stopped and running`

c. Right-click on one of the services listed.

**Question:**
- What are the available actions that can be taken?

  `Start, stop, restart - open services, search online and go to details (not clickable of this item I chose to right click)`

### Step 3: Performance tab.
a. Click the Performance tab. Select CPU to view the utilization in the left panel. Note: There is no CPU
option in the Performance tab in Windows 7.

**Questions:**
- What is the current utilization of the CPU?
  
  `2%`

- How many streams of instructions (i.e. Threads) are currently running?
  
  `969`

- How many Apps, Background processes, and Windows processes (i.e Processes) are currently running?
  
  `117`

b. Click on the Memory Chart in the left panel of the Performances tab. Note: There is no CPU option in
the Performance tab in Windows 7.

**Question:**
- What is the total physical memory (MB)?
  
  `16gb DDR 3`

- What is the available physical memory (MB)?
  
  `13.6gb`

- How much physical memory (MB) is being used by the computer?
  
  `2200mb (2.2gb)`

c. Click the Ethernet Chart in the left panel of the Performances tab. Note: There is no Ethernet option in
the Performance tab in Windows 7. Click the Networking tab in Windows 7 for the Ethernet information.

**Questions:**
- What is the link speed? What type of Ethernet Adapter is in use on this computer?
  
  `Intel(R) 82579LM Gigabit Network Connection (I dont see the link speed)`

- What type of network connection (i.e Connection type) is in use?
  
  `Ethernet`

- What is the IPv4 address of the PC? Note: This information is not available in the Networking tab in
Windows 7.
  
  `10.11.214.70`

Note: You can click Open Resource Monitor to bring up the Resource Monitor utility from the Performance
tab in Task Manager to view the individual processes, services, and applications utilizing system resources.

### Step 4: Processes tab.
a. Click the Processes tab.
b. Click the Memory heading. Click the Memory heading a second time.

**Question:**
- What effect does this have on the columns?
  
  `It changes the order of the processes listed. Ascending and descending.`

c. Right-click on the Memory heading and then select Resource values > Memory > Percents.
(Note: Resource values options are not available in Windows 7.)

**Questions:**
- What affect does this have on the Memory column?
  
  `Changes the processes listed memory usage to percentages.`

- How could this be useful?
  
  `Often when using high core and memory applications this can be very useful to know. Also find out how you can utilize the computer for the peak perfect performance.`

d. Open a web browser.
e. Return to the Task Manager. Click the Name heading.
(Note: The category options are not available in Windows 7.)

**Question:**
- The listed processes are divided by categories. What categories are listed?
  
  `Apps, background processes and windows processes.`

f. Select the web browser and click End Task.
g. Close all open windows.

### Step 5: Users tab.
a. Click the Users tab to list the usernames who are logged into the system.
b. Right-click a username. What are the available options?

  `Expand, disconnect and manage user accounts`

c. In Windows 8.x and 10, right-click Expand to view all the processes associated with this user.

### Step 6: Startup, App history, and Details tabs.
(Note: These tabs are not available in Windows 7.)

a. The Startup tab lists the processes that are started automatically during Windows startup. Click the
Startup tab. Right-click a process and list the available options below.

  `Disable, open file location, search online and properties.`

b. The App history tab lists the historical resources usage.

**Question:**
- What type of information can you get from this list?
  
  `You get the history of used applications on the computer.`

c. The Details tab displays process information such as process ID (PID), status, and memory utilization.
Right-click a process and list the available options below.

  `End task, end process tree, provide feedback(not clickable) - Set priority, set affinity - analyze wait chain, UAC virtualization(not clickable), create dump file - open file location, search online, properties and go to services(s).`

## Reflection Question

Why is it important for an administrator to understand how to work within the Task Manager?

  `Understanding how to work within the Task Manager is crucial for an administrator because it provides real-time data on system performance, running applications, and active processes. This information can help diagnose and resolve system issues, manage system resources more effectively, and ensure that applications and services are running as expected. It also allows administrators to quickly end tasks that are unresponsive, monitor network activity, and set process priorities, helping to maintain overall system stability and efficiency.`

## End of Document
