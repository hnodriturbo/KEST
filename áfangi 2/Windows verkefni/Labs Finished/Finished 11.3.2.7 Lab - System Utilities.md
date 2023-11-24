# 11.3.2.7 Lab - System Utilities

## Introduction

In this lab, you will use Windows utilities to configure operating system settings.

## Recommended Equipment

- A computer running Windows

## Instructions

### Part 1: Custom Management Console

#### Step 1: Explore the management console.
a. Open the Microsoft Management Console by searching for `mmc` and allow it to make changes.
b. Build a custom console in the Console1 window via File > Add/Remove Snap-in.
c. Add a folder snap-in and a Link to Web Address snap-in for `http://www.cisco.com`, naming it Cisco.

#### Step 2: Create a custom management console.
a. Add snap-ins like Computer Management, Device Manager, and Disk Management, managing the Local Computer.
b. Rename the Folder icon to Management Tools.
c. Save the custom console to the Desktop with your name, e.g., John’s Console.
d. Reopen the console, review the Management Tools folder, and navigate to Event Viewer.

**Question:**
- What was the path you used to navigate to the Event Viewer?
  
  `Computer Management - System Tools - Event Viewer`

e. Close the Console window without saving changes.

### Part 2: Registry Editor

#### Step 1: Change your desktop background settings.
a. Right-click the Desktop, select Personalize and note the background picture.
b. Set a solid blue background color.

**Question:**
- What is the background picture?

  `There is none since I set it to solid blue color.`

#### Step 2: Open the registry editor.
a. Open the Registry Editor with `regedit`.
b. Navigate to HKEY_CURRENT_USER\Control Panel\Colors and note the Background data value.

**Question:**
- What is the data value of the Background?

  `0 99 177`

#### Step 3: Export a registry key.
a. Export the Colors folder as BlueBKG and save it to the Desktop.
b. Edit the BlueBKG.reg with Notepad and note the Background data value.

**Question:**
- What is the data value of the Background?

  `0 99 177`

c. Change the desktop background to red and save changes.

#### Step 4: Import a registry file.
a. Import the BlueBKG.reg file to revert the background to blue and confirm the color change upon restart.

**Questions:**
- What is the data value of the Background after importing the BlueBKG.reg?
- What is the color of the desktop after restarting?

  `0 99 177`

f. Reset the Background to the original settings and delete the custom console and BlueBKG file.

## Reflection Questions
1. Why would it be beneficial to add snap-ins to the mmc that are for other computers on the network?
2. After restarting the computer, why was the desktop color changed?

`1. Adding snap-ins for other computers to the MMC enables centralized, efficient, and remote management of multiple networked systems from a single console 2. Because I imported the regedit file I exported before.`

## End of Document
