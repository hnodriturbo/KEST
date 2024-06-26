# 11.2.5.8 Lab - Manage Virtual Memory

## Introduction
In this lab, you will customize virtual memory settings.

## Recommended Equipment
- A computer with Windows installed with two or more partitions (At least 2GB of free space is recommended on the second partition.)

## Instructions

### Step 1: Open System Properties
a. Navigate to the Control Panel. In the Small icons view, click System.
b. In the System window, click Advanced system settings.
c. In the System Properties window, select the Advanced tab and click Settings under the Performance heading.
d. In the Performance Options window, click the Advanced tab.

**Question:**
- What is the current size of the virtual memory (paging file)?
  `1152mb`

### Step 2: Make Virtual Memory Changes
a. Click Change in the Virtual Memory area to open the Virtual Memory window.
b. Remove the check mark from Automatically manage paging file size for all drives.

**Question:**
- What Drive [Volume Label] contains the paging file?
  `C:`

c. Choose the I: drive. Select the Custom size radio button.
  (Note: Your drive letter and volume may be different than the example.)

**Question:**
- What is the recommended paging file size for all drives?
  `1151mb`

d. Enter a number smaller than the recommended file size in the Initial size (MB) field. Enter a number larger than the Initial size but smaller than the recommended file size in the Maximum size (MB) field. Click Set.
e. Select the C: drive. Select the No paging file radio button and click Set.
f. Click Yes to the System Properties warning message to continue.
g. Click OK in the Virtual Memory window to accept the new virtual memory settings.
h. Click OK in the Performance Options and System Properties windows.

### Step 3: Verify Changes
a. Navigate back to the System Properties window (Control Panel > System > Advanced system settings).
b. Select the Advanced tab and click Settings in the Performance area.
c. In the Performance Options window, select the Advanced tab and click Change.
d. The Virtual Memory window opens displaying the new paging file information. Verify your changes.

**Question:**
- What Drive [Volume Label] contains the paging file now?
  `I:`

### Step 4: Reset Virtual Memory
a. Select drive C: [Local Disk] > click System managed size > click Set.
b. Select I: > click No paging file > click Set.
c. Check Automatically manage paging file size for all drives and then click OK.
d. Click OK to the System Properties restart requirement message.
e. Click OK to close the Performance Options window. Click OK to close the System Properties window.
f. Click Restart Now when prompted by the warning message.

## Reflection Questions
- Why would you ever change the default virtual memory page file settings in Windows?
  `Changing Windows virtual memory page file settings can optimize performance, meet specific application requirements, enhance system stability, and tailor memory management for specialized workloads.`

## End of Document
